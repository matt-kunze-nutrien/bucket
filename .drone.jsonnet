{
  kind: 'pipeline',
  type: 'docker',
  name: 'pdf-template',

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
  ],
}
