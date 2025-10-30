# Contributing to Reinforcement.jl

Thank you for considering contributing to Reinforcement.jl! 

## How to contribute

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Add tests for your changes
5. Run the test suite with `] test`
6. Commit your changes (`git commit -am 'Add some amazing feature'`)
7. Push to the branch (`git push origin feature/amazing-feature`)
8. Create a Pull Request

## Development setup

```julia
# Activate the package environment
using Pkg
Pkg.activate(".")
Pkg.instantiate()

# To run tests
Pkg.test()

# To build documentation locally
cd("docs")
Pkg.activate(".")
include("make.jl")
```

## Code Style

- Follow the [Blue Style Guide](https://github.com/invenia/BlueStyle)
- Add docstrings for public functions
- Include tests for new functionality

## Documentation

When adding new features, please:
1. Add docstrings to new functions
2. Update the documentation in `docs/src/`
3. Include examples in the docstrings

## Questions?

Feel free to open an issue for:
- Bug reports
- Feature requests
- Questions about the codebase