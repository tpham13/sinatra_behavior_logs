A Sinatra web application that allows users(caregivers, parents, teachers, or anyone who works/live with children) to keep track of their children's challenging behaviors. 

CRUD actions on behavior logs: 
 - keep track of the date of the incident
 - keep track of the time of the incident
 - keep track of the incident (behavior)
 - keep track of what happened before the incident
 - keep track of what happened after the incident (response)

 MODELS: 
 - user 
    - atrributes: 
        - slug(could be an attribute OR an instance method!)
        - username
        - email
        - password
    - association: 
        - has many behavior_logs
 - behavior_log
    - attribute: 
        - incident_date
        - incident_time
        - child_name
        - incident
        - before_incident
        - response 
    - association:
        - belong to user


