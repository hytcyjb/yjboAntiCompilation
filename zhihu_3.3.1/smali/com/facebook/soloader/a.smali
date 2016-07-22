.class public Lcom/facebook/soloader/a;
.super Lcom/facebook/soloader/d;
.source "ApkSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/a$a;
    }
.end annotation


# instance fields
.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "^lib/([^/]+)/([^/]+\\.so)$"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/soloader/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 37
    iput p3, p0, Lcom/facebook/soloader/a;->f:I

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/facebook/soloader/a;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lcom/facebook/soloader/a;->f:I

    return v0
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/h$e;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/soloader/a$a;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/a$a;-><init>(Lcom/facebook/soloader/a;)V

    return-object v0
.end method

.method protected b()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/soloader/a;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/g;->d(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
