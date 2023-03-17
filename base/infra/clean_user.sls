remove_salt_service_user:
  user.absent:
    - name: salt
    - purge: True
