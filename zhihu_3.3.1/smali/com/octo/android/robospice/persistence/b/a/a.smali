.class public Lcom/octo/android/robospice/persistence/b/a/a;
.super Lcom/octo/android/robospice/persistence/b/a/c;
.source "Jackson2ObjectPersisterFactory.java"


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/octo/android/robospice/persistence/b/a/c;-><init>(Landroid/app/Application;Lcom/google/api/client/json/JsonFactory;)V

    .line 34
    return-void
.end method
