.class Landroid/support/v4/view/ViewPager$d;
.super Landroid/support/v4/view/a;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2919
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2971
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ac;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ac;->b()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2937
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/e;)V

    .line 2938
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->b(Ljava/lang/CharSequence;)V

    .line 2939
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->i(Z)V

    .line 2940
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2941
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 2943
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2944
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/e;->a(I)V

    .line 2946
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2923
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2924
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2925
    invoke-static {}, Landroid/support/v4/view/a/o;->a()Landroid/support/v4/view/a/o;

    move-result-object v0

    .line 2926
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->a(Z)V

    .line 2927
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ac;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2929
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ac;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ac;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->a(I)V

    .line 2930
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->b(I)V

    .line 2931
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/o;->c(I)V

    .line 2933
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2950
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2967
    :goto_0
    return v0

    .line 2953
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2967
    goto :goto_0

    .line 2955
    :sswitch_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2956
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2959
    goto :goto_0

    .line 2961
    :sswitch_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2962
    iget-object v1, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$d;->a:Landroid/support/v4/view/ViewPager;

    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2965
    goto :goto_0

    .line 2953
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
