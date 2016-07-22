.class Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;
.super Landroid/widget/BaseAdapter;
.source "WebViewToolDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/WebViewToolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebToolAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mCallback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/ui/webview/WebViewToolModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mData:Ljava/util/List;

    .line 256
    iput-object p2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mContext:Landroid/content/Context;

    .line 258
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 272
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 277
    const/4 v2, 0x0

    .line 278
    .local v2, viewHolder:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 279
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300bd

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 280
    new-instance v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;

    .end local v2           #viewHolder:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    invoke-direct {v2, v5}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog$1;)V

    .line 281
    .restart local v2       #viewHolder:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    const v3, 0x7f08041c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 282
    const v3, 0x7f08041d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    .line 283
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    :goto_0
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/webview/WebViewToolModel;

    .line 289
    .local v1, model:Lcom/didi/common/ui/webview/WebViewToolModel;
    iget-object v0, v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 290
    .local v0, imgView:Landroid/widget/ImageView;
    iget v3, v1, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 291
    iget v3, v1, Lcom/didi/common/ui/webview/WebViewToolModel;->resId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;->txtName:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/didi/common/ui/webview/WebViewToolModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    return-object p2

    .line 285
    .end local v0           #imgView:Landroid/widget/ImageView;
    .end local v1           #model:Lcom/didi/common/ui/webview/WebViewToolModel;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHolder:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    check-cast v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter$ViewHolder;
    goto :goto_0

    .line 294
    .restart local v0       #imgView:Landroid/widget/ImageView;
    .restart local v1       #model:Lcom/didi/common/ui/webview/WebViewToolModel;
    :cond_2
    iget-object v3, v1, Lcom/didi/common/ui/webview/WebViewToolModel;->icon:Ljava/lang/String;

    invoke-static {v3}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnet/tsz/afinal/FinalBitmap;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalBitmap;

    move-result-object v3

    iget-object v4, v1, Lcom/didi/common/ui/webview/WebViewToolModel;->icon:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lnet/tsz/afinal/FinalBitmap;->display(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1
.end method
