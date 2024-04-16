pr_info=$(gh pr list --head vl3-healing --repo networkservicemesh/sdk --json number,mergeable)
mergeable=$(echo $pr_info | jq -r '.[0].mergeable')
echo $mergeable

pr_number=$(echo $pr_info | jq -r '.[0].number')
echo $pr_number

if [ "$mergeable" = "MERGEABLE" ]; then
    echo "true"
fi