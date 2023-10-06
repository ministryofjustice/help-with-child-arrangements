apiVersion: apps/v1
kind: Deployment
metadata:
  name: help-with-child-arrangements
spec:
  replicas: 1
  selector:
    matchLabels:
      app: help-with-child-arrangements
  template:
    metadata:
      labels:
        app: help-with-child-arrangements
    spec:
      containers:
        - name: webapp
          imagePullPolicy: Always
          image: ${ECR_URL}:${IMAGE_TAG}
          ports:
            - containerPort: 3000
          command: ["./config/docker/entrypoint-webapp.sh"]
          envFrom:
            - configMapRef:
                name: environment-variables
            - secretRef:
                name: app-secrets
          readinessProbe:
            httpGet:
              path: /healthcheck/ready
              port: 3000
              httpHeaders:
                - name: X-Forwarded-Proto
                  value: https
                - name: X-Forwarded-Ssl
                  value: "on"
            periodSeconds: 60
            timeoutSeconds: 15
          livenessProbe:
            httpGet:
              path: /healthcheck/live
              port: 3000
              httpHeaders:
                - name: X-Forwarded-Proto
                  value: https
                - name: X-Forwarded-Ssl
                  value: "on"
            periodSeconds: 60
            timeoutSeconds: 15
