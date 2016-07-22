.class public Lcom/didi/frame/search/CommonAddrView;
.super Landroid/widget/LinearLayout;
.source "CommonAddrView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;
    }
.end annotation


# instance fields
.field private company:Lcom/didi/frame/search/CommonAddrItem;

.field private home:Lcom/didi/frame/search/CommonAddrItem;

.field private listener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

.field private listenercom:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

.field private listenerhome:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$1;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenerhome:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 70
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$2;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenercom:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 28
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$1;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenerhome:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 70
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$2;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenercom:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 23
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$1;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenerhome:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 70
    new-instance v0, Lcom/didi/frame/search/CommonAddrView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/CommonAddrView$2;-><init>(Lcom/didi/frame/search/CommonAddrView;)V

    iput-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listenercom:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    .line 18
    invoke-direct {p0}, Lcom/didi/frame/search/CommonAddrView;->init()V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/search/CommonAddrView;)Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->listener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/didi/frame/search/CommonAddrView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030079

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0802ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/search/CommonAddrItem;

    iput-object v1, p0, Lcom/didi/frame/search/CommonAddrView;->home:Lcom/didi/frame/search/CommonAddrItem;

    .line 34
    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/search/CommonAddrItem;

    iput-object v1, p0, Lcom/didi/frame/search/CommonAddrView;->company:Lcom/didi/frame/search/CommonAddrItem;

    .line 35
    return-void
.end method


# virtual methods
.method public setCompany(II)V
    .locals 2
    .parameter "ic"
    .parameter "tag"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->company:Lcom/didi/frame/search/CommonAddrItem;

    invoke-virtual {v0, p1, p2}, Lcom/didi/frame/search/CommonAddrItem;->setView(II)V

    .line 53
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->company:Lcom/didi/frame/search/CommonAddrItem;

    iget-object v1, p0, Lcom/didi/frame/search/CommonAddrView;->listenercom:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/search/CommonAddrItem;->setListener(Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/search/CommonAddrView;->setCompanyLine(Z)V

    .line 55
    return-void
.end method

.method public setCompanyLine(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->company:Lcom/didi/frame/search/CommonAddrItem;

    invoke-virtual {v0, p1}, Lcom/didi/frame/search/CommonAddrItem;->setLineShow(Z)V

    .line 59
    return-void
.end method

.method public setHome(II)V
    .locals 2
    .parameter "ic"
    .parameter "tag"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->home:Lcom/didi/frame/search/CommonAddrItem;

    invoke-virtual {v0, p1, p2}, Lcom/didi/frame/search/CommonAddrItem;->setView(II)V

    .line 43
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->home:Lcom/didi/frame/search/CommonAddrItem;

    iget-object v1, p0, Lcom/didi/frame/search/CommonAddrView;->listenerhome:Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/search/CommonAddrItem;->setListener(Lcom/didi/frame/search/CommonAddrItem$CommonItemListener;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/search/CommonAddrView;->setHomeLine(Z)V

    .line 45
    return-void
.end method

.method public setHomeLine(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/frame/search/CommonAddrView;->home:Lcom/didi/frame/search/CommonAddrItem;

    invoke-virtual {v0, p1}, Lcom/didi/frame/search/CommonAddrItem;->setLineShow(Z)V

    .line 49
    return-void
.end method

.method public setListener(Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/frame/search/CommonAddrView;->listener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    .line 39
    return-void
.end method
