import paramiko

keyfilepath = "/path/to/your.pem"  # or sub in a password here if allowed
server = 'myserver.example.com'
sshuser = 'user'
mysqluser = 'root'
mysqlpass = 'password'

dbname = ''

mykey = paramiko.RSAKey.from_private_key_file(keyfilepath)
client = paramiko.SSHClient()
client.load_system_host_keys()
client.connect(server, username=sshuser, pkey=mykey)


def ssh(cmd):
    out = []
    msg = [stdin, stdout, stderr] = client.exec_command(cmd)
    for item in msg:
        try:
            for line in item:
                out.append(line.strip('\\n'))
        except:
            pass

    return(list(out))


ssh("/usr/bin/mysql -u %s -p %s -e "grant all privileges on * .* to 'root'@'%'") % mysqluser, mysqlpass
