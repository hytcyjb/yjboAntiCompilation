.class public Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;
.super Lx/RelativeLayout;
.source "DDriveCancelTripOtherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView$TitleListener;
    }
.end annotation


# static fields
.field private static final MAX_LENFTH:I = 0x32


# instance fields
.field private isEditable:Z

.field private mEditView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->isEditable:Z

    .line 20
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->isEditable:Z

    .line 30
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lx/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->isEditable:Z

    .line 25
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03008a

    invoke-static {v1, v2, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->mEditView:Landroid/widget/EditText;

    .line 37
    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lx/ImageView;->setVisibility(I)V

    .line 38
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->mEditView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 39
    return-void
.end method

.method public static remargin(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "top"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 97
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->mEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getReasonContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->isEditable:Z

    return v0
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->isEditable:Z

    .line 43
    return-void
.end method

.method public setReasonContentEmpty(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCancelTripOtherView;->mEditView:Landroid/widget/EditText;

    const v1, 0x7f0b021b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 56
    :cond_0
    return-void
.end method
