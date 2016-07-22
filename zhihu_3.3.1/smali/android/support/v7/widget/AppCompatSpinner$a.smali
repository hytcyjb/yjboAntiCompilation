.class Landroid/support/v7/widget/AppCompatSpinner$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/SpinnerAdapter;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    .line 594
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 595
    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->b:Landroid/widget/ListAdapter;

    .line 598
    :cond_0
    if-eqz p2, :cond_1

    .line 599
    invoke-static {}, Landroid/support/v7/widget/AppCompatSpinner;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_2

    .line 600
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 602
    invoke-interface {p1}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 603
    invoke-interface {p1, p2}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 605
    :cond_2
    instance-of v0, p1, Landroid/support/v7/widget/al;

    if-eqz v0, :cond_1

    .line 606
    check-cast p1, Landroid/support/v7/widget/al;

    .line 607
    invoke-interface {p1}, Landroid/support/v7/widget/al;->a()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_1

    .line 608
    invoke-interface {p1, p2}, Landroid/support/v7/widget/al;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->b:Landroid/widget/ListAdapter;

    .line 657
    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$a;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->b:Landroid/widget/ListAdapter;

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    .line 673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 643
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$a;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 649
    :cond_0
    return-void
.end method
