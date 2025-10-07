import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.example.ollama_agent.dev"
            resValue(type = "string", name = "app_name", value = "Ollama Agent Dev")
        }
        create("stg") {
            dimension = "flavor-type"
            applicationId = "com.example.ollama_agent.stg"
            resValue(type = "string", name = "app_name", value = "Ollama Agent Staging")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.example.ollama_agent"
            resValue(type = "string", name = "app_name", value = "Ollama Agent")
        }
    }
}