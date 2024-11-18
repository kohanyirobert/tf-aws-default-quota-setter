# About

- Set desired `AWS_PROFILE`
- Run `terraform apply`

Note: it seems Terraform won't lower limits, but ignore such configurations. Lower limits manually, e.g.

```
aws service-quotas request-service-quota-increase --service-code vpc --quota-code L-F678F1CE --desired-value 5
```

Some limits can't be adjusted, check like, e.g.

```
aws service-quotas list-service-quotas --service-code vpc --quota-code L-F678F1CE
```