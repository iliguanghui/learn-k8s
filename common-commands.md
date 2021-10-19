# 从docker config secret中取出登录信息

kubectl --kubeconfig .kube/config_k8s-快麦客服快麦小智  -n jst-default  get secret regsecret -o jsonpath='{.data.\.dockerconfigjson}' | base64 -d | jq .
