.class public Lcom/didi/common/ui/component/EmptyView$Builder;
.super Ljava/lang/Object;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/EmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mImageId:I

.field mTextId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mImageId:I

    iget v2, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mTextId:I

    invoke-static {v0, v1, v2}, Lcom/didi/common/ui/component/EmptyView;->createGeneralEmptyView(Landroid/content/Context;II)Lx/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/didi/common/ui/component/EmptyView$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    iput p1, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mImageId:I

    .line 41
    return-object p0
.end method

.method public setLabel(I)Lcom/didi/common/ui/component/EmptyView$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 45
    iput p1, p0, Lcom/didi/common/ui/component/EmptyView$Builder;->mTextId:I

    .line 46
    return-object p0
.end method
