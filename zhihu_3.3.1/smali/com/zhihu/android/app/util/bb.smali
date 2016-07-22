.class public Lcom/zhihu/android/app/util/bb;
.super Ljava/lang/Object;
.source "ZHIntent.java"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->d:Z

    .line 34
    iput-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->e:Z

    .line 36
    iput-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->f:Z

    .line 39
    iput-object p1, p0, Lcom/zhihu/android/app/util/bb;->a:Ljava/lang/Class;

    .line 40
    iput-object p2, p0, Lcom/zhihu/android/app/util/bb;->b:Landroid/os/Bundle;

    .line 41
    iput-object p3, p0, Lcom/zhihu/android/app/util/bb;->c:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zhihu/android/app/util/bb;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/zhihu/android/app/util/bb;->d:Z

    .line 78
    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhihu/android/app/util/bb;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/zhihu/android/app/util/bb;->e:Z

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zhihu/android/app/util/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/zhihu/android/app/util/bb;->f:Z

    .line 90
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/zhihu/android/app/util/bb;->f:Z

    return v0
.end method
