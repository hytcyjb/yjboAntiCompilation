.class public Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtsRouteConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private address_layout:Landroid/view/View;

.field private from_addr:Landroid/widget/TextView;

.field private lineView:Landroid/view/View;

.field private switchBar:Lcom/didi/common/ui/component/SwitchBar;

.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

.field private time:Landroid/widget/TextView;

.field private to_addr:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->lineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->lineView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->time:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Lcom/didi/common/ui/component/SwitchBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/common/ui/component/SwitchBar;)Lcom/didi/common/ui/component/SwitchBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->switchBar:Lcom/didi/common/ui/component/SwitchBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->from_addr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->from_addr:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->to_addr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->to_addr:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->address_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;->address_layout:Landroid/view/View;

    return-object p1
.end method
