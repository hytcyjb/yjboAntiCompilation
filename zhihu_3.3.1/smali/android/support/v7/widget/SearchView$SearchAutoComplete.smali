.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v7/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1682
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1683
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1686
    sget v0, Landroid/support/v7/a/a$a;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1687
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1690
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1691
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    .line 1692
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 1708
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .locals 1
    .parameter

    .prologue
    .line 1676
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1751
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->d()V

    .line 1753
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1766
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 1769
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1770
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1771
    if-eqz v1, :cond_0

    .line 1772
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1787
    :cond_0
    :goto_0
    return v0

    .line 1775
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1776
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1777
    if-eqz v1, :cond_2

    .line 1778
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1780
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1781
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1782
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;Z)V

    goto :goto_0

    .line 1787
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1735
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1737
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1740
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1743
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/SearchView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1747
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1727
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 1717
    return-void
.end method

.method setSearchView(Landroid/support/v7/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;

    .line 1696
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter

    .prologue
    .line 1700
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    .line 1701
    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    .line 1702
    return-void
.end method
