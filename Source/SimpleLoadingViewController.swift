import Foundation

public class SimpleLoadingViewController: UIViewController {

    // MARK: - Properties

    let container = UIView()
    public let label = UILabel()
    let activityIndicator = UIActivityIndicatorView()

    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.groupTableViewBackground
        label.text = "Yo it's loading, be patient"
        activityIndicator.color = .black
        activityIndicator.startAnimating()
        addViews()
        addConstraints()
    }

    private func addViews() {
        self.view.addSubview(container)
        container.addSubview(label)
        container.addSubview(activityIndicator)
    }

    private func addConstraints() {
//        view.translatesAutoresizingMaskIntoConstraints = false
        container.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false

        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        container.bottomAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: activityIndicator.trailingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
        activityIndicator.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 8).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
    }
}