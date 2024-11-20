# Configurações básicas para o ProGuard

# Mantém todas as classes públicas da API do Flutter
-keep public class * {
    public protected *;
}

# Desabilita remoção de classes específicas (exemplo: modelos usados no JSON)
-keep class com.example.** { *; }

# Ignora advertências
-dontwarn **
