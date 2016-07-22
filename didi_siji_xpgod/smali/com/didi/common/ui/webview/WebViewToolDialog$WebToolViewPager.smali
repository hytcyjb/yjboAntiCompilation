.class Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;
.super Landroid/support/v4/view/PagerAdapter;
.source "WebViewToolDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/webview/WebViewToolDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebToolViewPager"
.end annotation


# instance fields
.field private callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/webview/WebViewToolDialog;Landroid/content/Context;Ljava/util/List;Lcom/didi/common/ui/webview/JSBridgeCallBack;Landroid/app/AlertDialog;)V
    .locals 1
    .parameter
    .parameter "ctx"
    .parameter
    .parameter "back"
    .parameter "alertDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/ui/webview/WebViewToolModel;",
            ">;>;",
            "Lcom/didi/common/ui/webview/JSBridgeCallBack;",
            "Landroid/app/AlertDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/didi/common/ui/webview/WebViewToolModel;>;>;"
    iput-object p1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->this$0:Lcom/didi/common/ui/webview/WebViewToolDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;

    .line 180
    iput-object p2, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mContext:Landroid/content/Context;

    .line 181
    iput-object p4, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    .line 182
    iput-object p3, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;

    .line 183
    iput-object p5, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mAlertDialog:Landroid/app/AlertDialog;

    .line 185
    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;)Lcom/didi/common/ui/webview/JSBridgeCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->callback:Lcom/didi/common/ui/webview/JSBridgeCallBack;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 234
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "vPosition"

    .prologue
    .line 189
    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, mGridView:Landroid/widget/GridView;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 192
    const v1, 0x7f020328

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 195
    new-instance v2, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    new-instance v1, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;

    invoke-direct {v1, p0, p2}, Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager$1;-><init>(Lcom/didi/common/ui/webview/WebViewToolDialog$WebToolViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 244
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
