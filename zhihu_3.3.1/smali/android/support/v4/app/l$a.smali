.class Landroid/support/v4/app/l$a;
.super Landroid/support/v4/app/o;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/o",
        "<",
        "Landroid/support/v4/app/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/l;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    .line 972
    invoke-direct {p0, p1}, Landroid/support/v4/app/o;-><init>(Landroid/support/v4/app/l;)V

    .line 973
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1009
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/l;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 1016
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 977
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;)V

    .line 1038
    return-void
.end method

.method public c()Landroid/support/v4/app/l;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()V

    .line 998
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/support/v4/app/l$a;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1032
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p0}, Landroid/support/v4/app/l$a;->c()Landroid/support/v4/app/l;

    move-result-object v0

    return-object v0
.end method
