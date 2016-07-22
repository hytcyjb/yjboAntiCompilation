.class public abstract Lcom/octo/android/robospice/request/g;
.super Ljava/lang/Object;
.source "SpiceRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/octo/android/robospice/request/g",
        "<TRESU",
        "LT;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/octo/android/robospice/request/listener/e;

.field private e:Z

.field private f:I

.field private g:Lcom/octo/android/robospice/request/listener/d;

.field private h:Lcom/octo/android/robospice/request/listener/b;

.field private i:Lcom/octo/android/robospice/c/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octo/android/robospice/request/g;->b:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/request/g;->e:Z

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/octo/android/robospice/request/g;->f:I

    .line 35
    new-instance v0, Lcom/octo/android/robospice/request/listener/d;

    sget-object v1, Lcom/octo/android/robospice/request/listener/RequestStatus;->PENDING:Lcom/octo/android/robospice/request/listener/RequestStatus;

    invoke-direct {v0, v1}, Lcom/octo/android/robospice/request/listener/d;-><init>(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    iput-object v0, p0, Lcom/octo/android/robospice/request/g;->g:Lcom/octo/android/robospice/request/listener/d;

    .line 38
    new-instance v0, Lcom/octo/android/robospice/c/a;

    invoke-direct {v0}, Lcom/octo/android/robospice/c/a;-><init>()V

    iput-object v0, p0, Lcom/octo/android/robospice/request/g;->i:Lcom/octo/android/robospice/c/b;

    .line 41
    invoke-direct {p0}, Lcom/octo/android/robospice/request/g;->e()V

    .line 42
    iput-object p1, p0, Lcom/octo/android/robospice/request/g;->a:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requests must be either non-inner classes or a static inner member class of Context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/octo/android/robospice/request/g;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/g",
            "<TRESU",
            "LT;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 155
    if-ne p0, p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/octo/android/robospice/request/g;->f:I

    iget v1, p1, Lcom/octo/android/robospice/request/g;->f:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 70
    if-gez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput p1, p0, Lcom/octo/android/robospice/request/g;->f:I

    .line 74
    return-void
.end method

.method public a(Lcom/octo/android/robospice/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/octo/android/robospice/request/g;->i:Lcom/octo/android/robospice/c/b;

    .line 58
    return-void
.end method

.method a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    new-instance v0, Lcom/octo/android/robospice/request/listener/d;

    invoke-direct {v0, p1}, Lcom/octo/android/robospice/request/listener/d;-><init>(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    iput-object v0, p0, Lcom/octo/android/robospice/request/g;->g:Lcom/octo/android/robospice/request/listener/d;

    .line 109
    invoke-virtual {p0}, Lcom/octo/android/robospice/request/g;->o()V

    .line 110
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/listener/b;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/octo/android/robospice/request/g;->h:Lcom/octo/android/robospice/request/listener/b;

    .line 151
    return-void
.end method

.method protected a(Lcom/octo/android/robospice/request/listener/e;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/octo/android/robospice/request/g;->d:Lcom/octo/android/robospice/request/listener/e;

    .line 134
    return-void
.end method

.method protected a(Ljava/util/concurrent/Future;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Lcom/octo/android/robospice/request/g;->c:Ljava/util/concurrent/Future;

    .line 130
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/g;->e:Z

    return v0
.end method

.method public c()Lcom/octo/android/robospice/c/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->i:Lcom/octo/android/robospice/c/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/octo/android/robospice/request/g;

    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/request/g;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/octo/android/robospice/request/g;->b:Z

    .line 98
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->c:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->c:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->h:Lcom/octo/android/robospice/request/listener/b;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->h:Lcom/octo/android/robospice/request/listener/b;

    invoke-interface {v0}, Lcom/octo/android/robospice/request/listener/b;->u_()V

    .line 105
    :cond_1
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/g;->b:Z

    return v0
.end method

.method k()Lcom/octo/android/robospice/request/listener/d;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->g:Lcom/octo/android/robospice/request/listener/d;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/octo/android/robospice/request/g;->f:I

    return v0
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->d:Lcom/octo/android/robospice/request/listener/e;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/octo/android/robospice/request/g;->d:Lcom/octo/android/robospice/request/listener/e;

    iget-object v1, p0, Lcom/octo/android/robospice/request/g;->g:Lcom/octo/android/robospice/request/listener/d;

    invoke-interface {v0, v1}, Lcom/octo/android/robospice/request/listener/e;->a(Lcom/octo/android/robospice/request/listener/d;)V

    .line 141
    :cond_0
    return-void
.end method
