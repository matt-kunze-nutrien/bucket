{
  kind: 'pipeline',
  type: 'docker',
  name: 'bucket',

  trigger: {
    ref: [
      'refs/heads/master',
      'refs/pull/*/head',
    ],
    event: ['push', 'pull_request'],
  },

  platform: {
    os: 'linux',
    arch: 'amd64',
  },

  steps: [
    {
      name: 'nothing',
      image: 'alpine:latest',
      when: {
        branch: ['master'],
      },
    },
  ],
}
