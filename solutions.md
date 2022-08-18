#Task-1

- Download the GitHub code of conduct via REST API call
% curl -H "Accept: application/vnd.github+json" -H "Authorization: token <Write your token>" -o output.json  https://api.github.com/codes_of_conduct

curl -H "Accept: application/vnd.github+json" -H "Authorization: token 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" -o output.json https://raw.githubusercontent.com/github/docs/main/content/site-policy/github-terms/github-event-code-of-conduct.md

#Task-2

- My username is jamuc, list all my repositories via API call
curl -i https://api.github.com/users/jamuc/repos

#Task-3
- Create a new repository called "MyPostman" with REST API for yourself
curl -i -H "Authorization: token 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" \
    -d '{
        "name": "MyPostman",
        "auto_init": true,
        "private": true,
        "gitignore_template": "nanoc"
      }' \
   https://api.github.com/user/repos


#Task-4
- I have a repository called jamuc/vim. List all the git tags in that repository via API call
curl -H "Accept: application/vnd.github+json" -H "Authorization: token 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"  https://api.github.com/repos/jamuc/vim/git/refs/tags
[
  {
    "ref": "refs/tags/findme",
    "node_id": "MDM6UmVmMzExNjcxMDY6cmVmcy90YWdzL2ZpbmRtZQ==",
    "url": "https://api.github.com/repos/jamuc/vim/git/refs/tags/findme",
    "object": {
      "sha": "fb31b66db697bbd566ed433d8e40be96093b90e7",
      "type": "commit",
      "url": "https://api.github.com/repos/jamuc/vim/git/commits/fb31b66db697bbd566ed433d8e40be96093b90e7"
    }
  }
]
!
