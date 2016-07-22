.class Landroid/support/v4/widget/AutoScrollHelper$b;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper$b;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->a(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->b(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->a(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    .line 693
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->c(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$a;->a()V

    .line 696
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->c(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$a;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$a;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->d(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 698
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->b(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    goto :goto_0

    .line 702
    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->e(Landroid/support/v4/widget/AutoScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 703
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v1, v2}, Landroid/support/v4/widget/AutoScrollHelper;->c(Landroid/support/v4/widget/AutoScrollHelper;Z)Z

    .line 704
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v1}, Landroid/support/v4/widget/AutoScrollHelper;->f(Landroid/support/v4/widget/AutoScrollHelper;)V

    .line 707
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$a;->d()V

    .line 709
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$a;->g()I

    move-result v1

    .line 710
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$a;->h()I

    move-result v0

    .line 711
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/widget/AutoScrollHelper;->a(II)V

    .line 714
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper$b;->a:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-static {v0}, Landroid/support/v4/widget/AutoScrollHelper;->g(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
