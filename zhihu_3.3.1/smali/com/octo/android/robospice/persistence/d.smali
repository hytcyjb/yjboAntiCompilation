.class public abstract Lcom/octo/android/robospice/persistence/d;
.super Ljava/lang/Object;
.source "ObjectPersisterFactory.java"

# interfaces
.implements Lcom/octo/android/robospice/persistence/e;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/octo/android/robospice/persistence/d;->a:Landroid/app/Application;

    .line 52
    iput-object p2, p0, Lcom/octo/android/robospice/persistence/d;->c:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/d;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final b()Landroid/app/Application;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/d;->a:Landroid/app/Application;

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DATA:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TDATA;>;)",
            "Lcom/octo/android/robospice/persistence/c",
            "<TDATA;>;"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/octo/android/robospice/persistence/d;->b:Z

    return v0
.end method
