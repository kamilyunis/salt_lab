generic_user:
    user.present:
       - name: {{ pillar['dev_user']['name'] }}
       - password: {{ pillar['dev_user']['password'] }}
       - fullname: Thomas{{ pillar['dev_user']['name']}}
       - shell: /bin/tsh
       - uid: {{ pillar['dev_user']['uid'] }}
       - home: /home/{{ pillar['dev_user']['name'] }}

user_kamil:
    user.present:
       - name: {{ pillar['kamil_user']['name'] }}
       - password: {{ pillar['kamil_user']['password'] }}
       - fullname: Kamil Babayev
       - shell: /bin/bash
       - uid: {{ pillar['kamil_user']['uid'] }}
       - home: /home/{{ pillar['kamil_user']['name'] }}


{{ pillar['new_user01']['name']}}:
    user.present:
        - shell: /bin/bash
        - home: /home/{{ pillar['new_user01']['name'] }}

thomas_group:
    group.present:
       - name: {{ pillar['dev_user']['name'] }}
       - gid: 1004
       - members:
         - thomas
         - kamil
