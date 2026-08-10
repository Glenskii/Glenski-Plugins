<#!
.SYNOPSIS
Validates a Skillstore source URL before submission.

.DESCRIPTION
Checks the GitHub tree URL shape required by Skillstore: a lowercase owner and
repository, a full 40-character commit hash, and a non-empty skill directory.
This is a local format gate. Open the returned URL in a browser to verify that
the target contains the intended SKILL.md before submitting it.
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$SourceUrl
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

try {
    $uri = [Uri]$SourceUrl
}
catch {
    throw 'Source URL must be a valid absolute GitHub URL.'
}

if ($uri.Scheme -ne 'https' -or $uri.Host -ne 'github.com' -or $uri.Query -or $uri.Fragment) {
    throw 'Source URL must be an HTTPS github.com URL with no query string or fragment.'
}

$parts = $uri.AbsolutePath.Trim('/').Split('/')
if ($parts.Count -lt 5 -or $parts[2] -ne 'tree') {
    throw 'Source URL must use /<owner>/<repository>/tree/<commit>/<skill-directory>.'
}

$owner = $parts[0]
$repository = $parts[1]
$commit = $parts[3]
$skillPath = ($parts[4..($parts.Count - 1)] -join '/')

if ($owner -cne $owner.ToLowerInvariant() -or $repository -cne $repository.ToLowerInvariant()) {
    throw 'GitHub owner and repository must be canonical lowercase for Skillstore.'
}

if ($commit -notmatch '^[0-9a-f]{40}$') {
    throw 'Commit must be a full 40-character lowercase SHA-1 hash.'
}

if ([string]::IsNullOrWhiteSpace($skillPath)) {
    throw 'Source URL must include the skill directory after the commit hash.'
}

Write-Output 'Skillstore source URL format is valid.'
Write-Output "Open and verify before submission: $SourceUrl"
