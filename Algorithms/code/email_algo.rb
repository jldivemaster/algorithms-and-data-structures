#//email
#/You are asked to collect user emails, however as a security measure
#//You will only accept emails from specific providers
#//gmail, outlook, yahoo, aol, hotmail
#//return an object with the keys of the provider with the value of the users info without the provider
#//if the user does not have one of the approved email providers return false

#//in: bob@notavirus.com
#//out: false

#//in: coolCat@gmail.com
#//out: {gmail:coolCat}

#//in: GayleLM@hotmail.com
#//out: {hotmail:gayleLM}

def collect_emails(email)
  hash = {}
  arr = email.split("@")
  if (arr[1] == "gmail.com") || (arr[1] == "outlook.com") || (arr[1] == "yahoo.com") || (arr[1] == "aol.com") || (arr[1] == "hotmail.com")
    k = arr[1][/.*<([^>]*)/,1]
    v = arr[0]
    return hash[k] = v
  else
    return false
  end

end

collect_emails("bob@notavirus.com")
#collect_emails("coolCat@gmail.com")
#collect_emails("gayleLM@hotmail.com")
