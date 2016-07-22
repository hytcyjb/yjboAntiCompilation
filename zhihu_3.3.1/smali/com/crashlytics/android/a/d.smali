.class Lcom/crashlytics/android/a/d;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/crashlytics/android/a/d;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/crashlytics/android/a/d;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/crashlytics/android/a/d;->c:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/crashlytics/android/a/d;->d:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/crashlytics/android/a/d;
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 37
    invoke-static {v0}, Lcom/crashlytics/android/a/d;->a(Ljava/util/Properties;)Lcom/crashlytics/android/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Properties;)Lcom/crashlytics/android/a/d;
    .locals 5
    .parameter

    .prologue
    .line 26
    const-string v0, "version_code"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "version_name"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    const-string v2, "build_id"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "package_name"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    new-instance v4, Lcom/crashlytics/android/a/d;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/crashlytics/android/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
