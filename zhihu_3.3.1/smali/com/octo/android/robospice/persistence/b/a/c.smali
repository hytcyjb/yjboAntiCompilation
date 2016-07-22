.class public abstract Lcom/octo/android/robospice/persistence/b/a/c;
.super Lcom/octo/android/robospice/persistence/a/b;
.source "JsonObjectPersisterFactory.java"


# instance fields
.field private a:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/octo/android/robospice/persistence/b/a/c;-><init>(Landroid/app/Application;Lcom/google/api/client/json/JsonFactory;Ljava/util/List;Ljava/io/File;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/google/api/client/json/JsonFactory;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/google/api/client/json/JsonFactory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p4}, Lcom/octo/android/robospice/persistence/a/b;-><init>(Landroid/app/Application;Ljava/util/List;Ljava/io/File;)V

    .line 39
    iput-object p2, p0, Lcom/octo/android/robospice/persistence/b/a/c;->a:Lcom/google/api/client/json/JsonFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;Ljava/io/File;)Lcom/octo/android/robospice/persistence/a/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/octo/android/robospice/persistence/b/a/c;->b(Ljava/lang/Class;Ljava/io/File;)Lcom/octo/android/robospice/persistence/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/io/File;)Lcom/octo/android/robospice/persistence/b/a/b;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TDATA;>;",
            "Ljava/io/File;",
            ")",
            "Lcom/octo/android/robospice/persistence/b/a/b",
            "<TDATA;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/octo/android/robospice/persistence/b/a/b;

    invoke-virtual {p0}, Lcom/octo/android/robospice/persistence/b/a/c;->b()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/octo/android/robospice/persistence/b/a/c;->a:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/octo/android/robospice/persistence/b/a/b;-><init>(Landroid/app/Application;Lcom/google/api/client/json/JsonFactory;Ljava/lang/Class;Ljava/io/File;)V

    return-object v0
.end method
