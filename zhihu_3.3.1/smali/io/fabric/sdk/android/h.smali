.class public abstract Lio/fabric/sdk/android/h;
.super Ljava/lang/Object;
.source "Kit.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/h;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lio/fabric/sdk/android/c;

.field f:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<TResult;>;"
        }
    .end annotation
.end field

.field g:Landroid/content/Context;

.field h:Lio/fabric/sdk/android/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/f",
            "<TResult;>;"
        }
    .end annotation
.end field

.field i:Lio/fabric/sdk/android/services/common/IdManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lio/fabric/sdk/android/g;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/g;-><init>(Lio/fabric/sdk/android/h;)V

    iput-object v0, p0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    .line 44
    return-void
.end method


# virtual methods
.method final B()V
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    iget-object v0, p0, Lio/fabric/sdk/android/h;->e:Lio/fabric/sdk/android/c;

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/fabric/sdk/android/g;->a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected C()Lio/fabric/sdk/android/services/common/IdManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lio/fabric/sdk/android/h;->i:Lio/fabric/sdk/android/services/common/IdManager;

    return-object v0
.end method

.method public D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lio/fabric/sdk/android/h;->g:Landroid/content/Context;

    return-object v0
.end method

.method public E()Lio/fabric/sdk/android/c;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/fabric/sdk/android/h;->e:Lio/fabric/sdk/android/c;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method G()Z
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    .line 178
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected H()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lio/fabric/sdk/android/h;->f:Lio/fabric/sdk/android/g;

    invoke-virtual {v0}, Lio/fabric/sdk/android/g;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/h;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 142
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/h;->b(Lio/fabric/sdk/android/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p1, p0}, Lio/fabric/sdk/android/h;->b(Lio/fabric/sdk/android/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->G()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lio/fabric/sdk/android/h;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :cond_3
    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->G()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lio/fabric/sdk/android/h;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method a(Landroid/content/Context;Lio/fabric/sdk/android/c;Lio/fabric/sdk/android/f;Lio/fabric/sdk/android/services/common/IdManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/c;",
            "Lio/fabric/sdk/android/f",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p2, p0, Lio/fabric/sdk/android/h;->e:Lio/fabric/sdk/android/c;

    .line 57
    new-instance v0, Lio/fabric/sdk/android/d;

    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/h;->F()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/h;->g:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lio/fabric/sdk/android/h;->h:Lio/fabric/sdk/android/f;

    .line 59
    iput-object p4, p0, Lio/fabric/sdk/android/h;->i:Lio/fabric/sdk/android/services/common/IdManager;

    .line 60
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method b(Lio/fabric/sdk/android/h;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/b;

    .line 161
    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/b;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 163
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_1
    return v0

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 169
    goto :goto_1
.end method

.method protected c_()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    check-cast p1, Lio/fabric/sdk/android/h;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/h;->a(Lio/fabric/sdk/android/h;)I

    move-result v0

    return v0
.end method

.method protected abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method
