.class public Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonHistoryOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;,
        Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    }
.end annotation


# static fields
.field public static final CHECK_STATUS_GETONCAR_TIME:I = 0x1b7740

.field public static final DEFAULT_SIZE:I = 0x14

.field public static final GET_DATA_FROM_SERVICE:I = 0x7d9

.field public static final MSG_HIDE_FINISHTEXT_TYPE:I = 0x2

.field public static final MSG_HIDE_TITLE_RIGHT_IMG:I = 0x4

.field public static final MSG_LOAD_DATA_TYPE:I = 0x3

.field public static final MSG_SHOW_FINISHTEXT_TYPE:I = 0x1

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

.field private backListener:Landroid/view/View$OnClickListener;

.field private dialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private doneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private hasNext:Z

.field private isDestory:Z

.field private mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackPressed:Z

.field private mDDriveFirstLogin:Z

.field private mDDriveSelectedOrders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishText:Lx/RelativeLayout;

.field private mFooter:Landroid/view/View;

.field private mFooterLoading:Landroid/widget/ImageView;

.field private mFooterNoMore:Landroid/widget/TextView;

.field private mFunc:Landroid/widget/Button;

.field private mFuncStateListener:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLoginListener:Lcom/didi/common/listener/LoginListener;

.field private mNoOrderTip:Lx/ImageView;

.field private mNumber:I

.field private mOrderHistoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedOrders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private selectPosition:I

.field private waitingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    .line 172
    iput v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    .line 174
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveFirstLogin:Z

    .line 222
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mHandler:Landroid/os/Handler;

    .line 248
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I

    .line 1143
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFuncStateListener:Landroid/view/View$OnClickListener;

    .line 1769
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mBackPressed:Z

    .line 1770
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$21;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->backListener:Landroid/view/View$OnClickListener;

    .line 1782
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$22;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$22;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderHistoryComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestory:Z

    return v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadHistory()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onDDriveItemClick(Lcom/didi/common/model/OrderHistory;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadUnReadFromDB(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/frame/titlebar/TitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistoryList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->appendDDriveList(Lcom/didi/common/model/OrderHistoryList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showLoadingMore()V

    return-void
.end method

.method static synthetic access$2500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showNoMore()V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/common/model/OrderHistoryList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->fillData(Lcom/didi/common/model/OrderHistoryList;)V

    return-void
.end method

.method static synthetic access$2708(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    return v0
.end method

.method static synthetic access$2800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showHistoryEmptyView()V

    return-void
.end method

.method static synthetic access$2902(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mBackPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->updateHistoryOrderList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->back()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->selectPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->onOrderItemEdited(Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearMap()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V

    return-void
.end method

.method private addFooter()V
    .locals 2

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1830
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hide(Landroid/view/View;)V

    .line 1831
    return-void
.end method

.method private addTo(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p1, source:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    .local p2, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/OrderHistory;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 1006
    .local v1, orderHistory:Lcom/didi/common/model/OrderHistory;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1008
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    .end local v1           #orderHistory:Lcom/didi/common/model/OrderHistory;
    :cond_1
    return-void
.end method

.method private appendDDriveList(Lcom/didi/common/model/OrderHistoryList;)V
    .locals 7
    .parameter "list"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1594
    invoke-direct {p0, v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getHistoryBeforeOrder(Lcom/didi/common/model/OrderHistory;)Ljava/util/List;

    move-result-object v0

    .line 1595
    .local v0, all:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    iget-object v3, p1, Lcom/didi/common/model/OrderHistoryList;->waitingList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->appendDDriveList(Ljava/util/List;Ljava/util/List;Z)V

    .line 1597
    iget-object v3, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderHistoryComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1598
    iget-object v3, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1599
    .local v1, doneSize:I
    if-lez v1, :cond_0

    .line 1601
    invoke-direct {p0, v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getHistoryBeforeOrder(Lcom/didi/common/model/OrderHistory;)Ljava/util/List;

    move-result-object v2

    .line 1602
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    iget-object v3, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-direct {p0, v3, v2, v6}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->appendDDriveList(Ljava/util/List;Ljava/util/List;Z)V

    .line 1608
    :goto_0
    return-void

    .line 1605
    .end local v2           #items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    :cond_0
    invoke-direct {p0, v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getHistoryBeforeOrder(Lcom/didi/common/model/OrderHistory;)Ljava/util/List;

    move-result-object v2

    .line 1606
    .restart local v2       #items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    iget-object v3, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-direct {p0, v3, v2, v6}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->appendDDriveList(Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private appendDDriveList(Ljava/util/List;Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter "finished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1611
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1620
    :cond_0
    return-void

    .line 1614
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    .line 1615
    .local v2, item:Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
    invoke-static {v2}, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->toDDHistory(Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;)Lcom/didi/common/model/OrderHistory;

    move-result-object v0

    .line 1616
    .local v0, history:Lcom/didi/common/model/OrderHistory;
    iget-boolean v3, v0, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    xor-int/2addr v3, p3

    if-eqz v3, :cond_2

    .line 1617
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private back()V
    .locals 3

    .prologue
    .line 1719
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    .line 1720
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$20;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1744
    return-void
.end method

.method private clearMap()V
    .locals 0

    .prologue
    .line 1013
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 1014
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 1015
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 1016
    return-void
.end method

.method private closeProgressDialog()V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1826
    :cond_0
    return-void
.end method

.method private createHistoryEmptyView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1706
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/EmptyView;->obtainBuilder(Landroid/content/Context;)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v0

    .line 1707
    .local v0, builder:Lcom/didi/common/ui/component/EmptyView$Builder;
    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/EmptyView$Builder;->setIcon(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v1

    const v2, 0x7f0b03ce

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/EmptyView$Builder;->setLabel(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    .line 1708
    invoke-virtual {v0}, Lcom/didi/common/ui/component/EmptyView$Builder;->build()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private deleteDDriveOrders(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1401
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    .line 1402
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 1403
    .local v1, item:Lcom/didi/common/model/OrderHistory;
    iget-object v2, v1, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1408
    .end local v1           #item:Lcom/didi/common/model/OrderHistory;
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1409
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 1410
    invoke-static {}, Lcom/didi/ddrive/managers/OrderHistoryManager;->getInstance()Lcom/didi/ddrive/managers/OrderHistoryManager;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v2, p1, v3}, Lcom/didi/ddrive/managers/OrderHistoryManager;->deleteOrder(Ljava/lang/Runnable;Ljava/util/List;)V

    .line 1414
    :goto_1
    return-void

    .line 1412
    :cond_2
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->deleteDidiOrders(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private deleteDidiOrders(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 1417
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$16;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V

    .line 1452
    .local v0, sucReqJob:Lthread/Job;
    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$17;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;Lthread/Job;)V

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    invoke-static {v1, v2}, Lcom/didi/common/net/CommonRequest;->deleteOrders(Lcom/didi/common/net/ResponseListener;Ljava/util/List;)V

    .line 1483
    return-void
.end method

.method private fillData(Lcom/didi/common/model/OrderHistoryList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/didi/common/model/OrderHistoryList;->getWaitingList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addTo(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 344
    iget-object v0, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addTo(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 345
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderHistoryComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 346
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderHistoryComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addTo(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 348
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addTo(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 350
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->resetFuncState()V

    .line 351
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    .line 352
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 372
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$4;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 793
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$5;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 810
    return-void
.end method

.method private getDataFromService()V
    .locals 4

    .prologue
    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    .line 1544
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasNext:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    if-eqz v0, :cond_0

    .line 1586
    :goto_0
    return-void

    .line 1548
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    new-instance v3, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$19;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/net/CommonRequest;->getHistory(JILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private getHistoryBeforeOrder(Lcom/didi/common/model/OrderHistory;)Ljava/util/List;
    .locals 3
    .parameter "history"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/model/OrderHistory;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1623
    const-wide/16 v0, 0x0

    .line 1624
    .local v0, lastTime:J
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1625
    iget-object v2, p1, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v0

    .line 1627
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderHistoryManager;->getInstance()Lcom/didi/ddrive/managers/OrderHistoryManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/didi/ddrive/managers/OrderHistoryManager;->getHistoryAfter(J)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mBackPressed:Z

    .line 281
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 282
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 283
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    return-void
.end method

.method private initFuncState()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1079
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1080
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f07001e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1081
    return-void
.end method

.method private initViews(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 3
    .parameter "inflater"
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    .line 287
    const v0, 0x7f080482

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 288
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 289
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f080301

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 291
    const v0, 0x7f0300af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    const v1, 0x7f0802d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterLoading:Landroid/widget/ImageView;

    .line 293
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    const v1, 0x7f0803b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterNoMore:Landroid/widget/TextView;

    .line 294
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 295
    const v0, 0x7f080489

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFinishText:Lx/RelativeLayout;

    .line 296
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFinishText:Lx/RelativeLayout;

    invoke-virtual {v0, v2}, Lx/RelativeLayout;->setVisibility(I)V

    .line 297
    const v0, 0x7f080488

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    .line 298
    const v0, 0x7f080487

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNoOrderTip:Lx/ImageView;

    .line 299
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNoOrderTip:Lx/ImageView;

    invoke-virtual {v0, v2}, Lx/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method private loadHistory()V
    .locals 1

    .prologue
    .line 1531
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    invoke-static {}, Lcom/didi/ddrive/managers/OrderHistoryManager;->getInstance()Lcom/didi/ddrive/managers/OrderHistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderHistoryManager;->queryHistory()V

    .line 1533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveFirstLogin:Z

    .line 1537
    :goto_0
    return-void

    .line 1535
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveAccountManager;->reLogin()V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 0

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showLoadingMore()V

    .line 1835
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getDataFromService()V

    .line 1836
    return-void
.end method

.method private loadUnReadFromDB(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, orderList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 848
    .local v1, order:Lcom/didi/common/model/OrderHistory;
    iget-object v4, v1, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 850
    .local v3, sid:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v2

    .line 851
    .local v2, session:Lcom/didi/im/model/IMSession;
    if-eqz v2, :cond_0

    .line 852
    invoke-virtual {v2}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v4

    iput v4, v1, Lcom/didi/common/model/OrderHistory;->imUnread:I

    goto :goto_0

    .line 857
    .end local v1           #order:Lcom/didi/common/model/OrderHistory;
    .end local v2           #session:Lcom/didi/im/model/IMSession;
    .end local v3           #sid:Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;

    invoke-direct {v4, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$7;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-static {v4}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 866
    return-void
.end method

.method private onDDriveItemClick(Lcom/didi/common/model/OrderHistory;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 1674
    const-string v6, "pdjxtriprecord_01_ck"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1675
    iget v6, p1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    invoke-static {v6}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v4

    .line 1676
    .local v4, orderState:Lcom/didi/ddrive/model/OrderState;
    iget v6, p1, Lcom/didi/common/model/OrderHistory;->payState:I

    invoke-static {v6}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v5

    .line 1677
    .local v5, payState:Lcom/didi/ddrive/model/PayState;
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v1

    .line 1678
    .local v1, mgr:Lcom/didi/ddrive/managers/OrderRecoveryManager;
    iput-object v4, v1, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mOrderState:Lcom/didi/ddrive/model/OrderState;

    .line 1679
    iput-object v5, v1, Lcom/didi/ddrive/managers/OrderRecoveryManager;->mPayState:Lcom/didi/ddrive/model/PayState;

    .line 1681
    :try_start_0
    iget-object v6, p1, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1682
    .local v2, oid:J
    invoke-virtual {v1, v2, v3}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    .end local v2           #oid:J
    :goto_0
    return-void

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onOrderItemEdited(Landroid/widget/AdapterView;Landroid/view/View;ILcom/didi/common/model/OrderHistory;Z)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "order"
    .parameter "winFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I",
            "Lcom/didi/common/model/OrderHistory;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 1032
    iget-boolean v2, p4, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    if-eqz v2, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget v2, p4, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    if-eq v2, v3, :cond_0

    .line 1040
    if-eqz p5, :cond_2

    .line 1041
    invoke-direct {p0, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showWindowForDeletingOrder(Landroid/view/View;)V

    .line 1042
    invoke-virtual {p0, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addSelectedItem(Lcom/didi/common/model/OrderHistory;)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    if-eqz v2, :cond_0

    .line 1051
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {v2, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->isItemSelected(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setItemSelected(Landroid/view/View;IZ)V

    .line 1053
    invoke-virtual {p0, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->removeSelectedItem(Lcom/didi/common/model/OrderHistory;)V

    .line 1059
    :goto_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 1061
    .local v0, curFuncState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hasSelectedItem()Z

    move-result v1

    .line 1063
    .local v1, hasSelected:Z
    if-eqz v1, :cond_4

    sget-object v2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->CANCEL_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    if-ne v0, v2, :cond_4

    .line 1064
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->setFuncEditState()V

    goto :goto_0

    .line 1055
    .end local v0           #curFuncState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    .end local v1           #hasSelected:Z
    :cond_3
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {v2, p2, p3, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setItemSelected(Landroid/view/View;IZ)V

    .line 1056
    invoke-virtual {p0, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addSelectedItem(Lcom/didi/common/model/OrderHistory;)V

    goto :goto_1

    .line 1065
    .restart local v0       #curFuncState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    .restart local v1       #hasSelected:Z
    :cond_4
    if-nez v1, :cond_0

    .line 1066
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->initFuncState()V

    goto :goto_0
.end method

.method private redirectToCarWaitForArr(Ljava/lang/String;Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;I)V
    .locals 3
    .parameter "tdKey"
    .parameter "carHistoryOrder"
    .parameter "carOrder"
    .parameter "serviceType"

    .prologue
    .line 970
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 972
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 973
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$11;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;I)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    return-void
.end method

.method private redirectToCarWaitForReq(Lcom/didi/car/model/CarHistoryOrder;Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "carHistoryOrder"
    .parameter "carOrder"

    .prologue
    .line 938
    const-string v0, "history_response_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 944
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 947
    :cond_0
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$10;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarHistoryOrder;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    return-void
.end method

.method private redirectToFlierWaitForArr(Ljava/lang/String;Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;I)V
    .locals 3
    .parameter "tdKey"
    .parameter "historyOrder"
    .parameter "order"
    .parameter "serviceType"

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 904
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$9;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$9;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;I)V

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 933
    return-void
.end method

.method private redirectToFlierWaitForReq(Lcom/didi/flier/model/FlierHistoryOrder;Lcom/didi/flier/model/FlierOrder;)V
    .locals 3
    .parameter "historyOrder"
    .parameter "flierOrder"

    .prologue
    .line 869
    const-string v0, "flier_history_response_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Lcom/didi/flier/model/FlierOrder;->isBooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 875
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 878
    :cond_0
    new-instance v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$8;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/flier/model/FlierOrder;Lcom/didi/flier/model/FlierHistoryOrder;)V

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 898
    return-void
.end method

.method private resetFuncState()V
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->OPEN_EDIT:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1073
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f0b031b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1074
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f07001e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1075
    return-void
.end method

.method private resetListState()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mOrderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->waitingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    .line 313
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->resetFuncState()V

    .line 314
    return-void
.end method

.method private setFuncEditState()V
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    sget-object v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->DELETE:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1085
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f0b02b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1086
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    const v1, 0x7f070036

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1087
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 318
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 319
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0408

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 321
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mTitleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b031b

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFuncStateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 322
    return-void
.end method

.method private showHistoryEmptyView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1690
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFunc:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1692
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 1694
    .local v0, emptyView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1695
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->createHistoryEmptyView()Landroid/view/View;

    move-result-object v0

    .line 1696
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1699
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1700
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1703
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private showLoadingMore()V
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->show(Landroid/view/View;)V

    .line 1840
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterLoading:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->show(Landroid/view/View;)V

    .line 1841
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterNoMore:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hide(Landroid/view/View;)V

    .line 1842
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1844
    :cond_0
    return-void
.end method

.method private showNoMore()V
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->show(Landroid/view/View;)V

    .line 1848
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterNoMore:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->show(Landroid/view/View;)V

    .line 1849
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooterLoading:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->hide(Landroid/view/View;)V

    .line 1852
    return-void
.end method

.method private showProgressDialogUI(I)V
    .locals 3
    .parameter "strId"

    .prologue
    const/4 v2, 0x0

    .line 1804
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mBackPressed:Z

    if-eqz v0, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1808
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1809
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1810
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1811
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1812
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1813
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1814
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1815
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showWindowForDeletingOrder(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1096
    const v9, 0x7f090284

    invoke-static {v9}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v9

    float-to-int v6, v9

    .line 1097
    .local v6, winW:I
    const v9, 0x7f090283

    invoke-static {v9}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v9

    float-to-int v5, v9

    .line 1099
    .local v5, winH:I
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1101
    .local v3, tv:Landroid/widget/TextView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1102
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    div-int/lit8 v9, v5, 0x6

    invoke-virtual {v3, v11, v9, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1105
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1106
    const v9, 0x7f020275

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1108
    new-instance v9, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$12;

    invoke-direct {v9, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$12;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resize(Landroid/view/View;)Z

    .line 1121
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v3, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1122
    .local v2, popupWin:Landroid/widget/PopupWindow;
    invoke-virtual {v2, v12}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1123
    invoke-virtual {v2, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1124
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1125
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1126
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1128
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 1129
    .local v4, v_loc:[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1131
    aget v9, v4, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    sub-int v7, v9, v10

    .line 1132
    .local v7, x:I
    aget v9, v4, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit8 v10, v5, 0x5

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    .line 1133
    .local v8, y:I
    const v9, 0x7f080487

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    .local v0, bv:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1135
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1137
    :cond_0
    invoke-virtual {v2, p1, v11, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1138
    return-void
.end method

.method private updateHistoryOrderList()V
    .locals 1

    .prologue
    .line 336
    const v0, 0x7f0b0582

    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showProgressDialogUI(I)V

    .line 337
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->loadHistory()V

    .line 338
    return-void
.end method


# virtual methods
.method protected addSelectedItem(Lcom/didi/common/model/OrderHistory;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    .line 1250
    .local v0, selectedOrders:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #selectedOrders:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1253
    .restart local v0       #selectedOrders:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    .line 1255
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1256
    return-void
.end method

.method protected changeEditMode(Z)Z
    .locals 3
    .parameter "editMode"

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, result:Z
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    .line 1236
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    if-eqz v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {v2, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->setEditMode(Z)V

    .line 1240
    const/4 v1, 0x1

    .line 1244
    :cond_0
    return v1
.end method

.method protected clearSelectedItemsId(Z)V
    .locals 4
    .parameter "reset"

    .prologue
    .line 1276
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    .line 1277
    .local v2, selectedOrders:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    if-eqz v2, :cond_1

    .line 1279
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 1280
    .local v1, order:Lcom/didi/common/model/OrderHistory;
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/didi/common/model/OrderHistory;->checked:Z

    goto :goto_0

    .line 1283
    .end local v1           #order:Lcom/didi/common/model/OrderHistory;
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1286
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected doHistoryOrderItemsDelete(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 1305
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getOrderDelConfirm()Z

    move-result v0

    .line 1306
    .local v0, isConfirmed:Z
    if-nez v0, :cond_0

    .line 1308
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setOrderDelConfirm(Z)V

    .line 1310
    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$14;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showConfirmDialogIfNeed(Ljava/lang/Runnable;)V

    .line 1324
    :goto_0
    return-void

    .line 1320
    :cond_0
    const v1, 0x7f0b0581

    invoke-direct {p0, v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->showProgressDialogUI(I)V

    .line 1323
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->deleteDDriveOrders(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected hasSelectedItem()Z
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    .line 1291
    .local v0, selectedIds:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1293
    const/4 v1, 0x1

    .line 1295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isEditMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1214
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    if-eqz v1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->adapter:Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersAdapter;->isEditMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 1713
    const-string v0, "pdjxtriprecord_00_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1714
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->back()V

    .line 1715
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 270
    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->setTitleBar()V

    .line 272
    invoke-direct {p0, p1, v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->initViews(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->initData()V

    .line 274
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->resetListState()V

    .line 275
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->updateHistoryOrderList()V

    .line 276
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1856
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 1857
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 1858
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveFirstLogin:Z

    if-eqz v0, :cond_0

    .line 1657
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;->success:Z

    if-eqz v0, :cond_1

    .line 1659
    invoke-static {}, Lcom/didi/ddrive/managers/OrderHistoryManager;->getInstance()Lcom/didi/ddrive/managers/OrderHistoryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderHistoryManager;->queryHistory()V

    .line 1664
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveFirstLogin:Z

    .line 1666
    :cond_0
    return-void

    .line 1662
    :cond_1
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getDataFromService()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 1332
    iget-boolean v4, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->success:Z

    if-eqz v4, :cond_1

    .line 1334
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->list:Ljava/util/List;

    .line 1335
    .local v2, oidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/OrderHistory;

    .line 1337
    .local v0, history:Lcom/didi/common/model/OrderHistory;
    :try_start_0
    iget-object v4, v0, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1338
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1345
    .end local v0           #history:Lcom/didi/common/model/OrderHistory;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #oidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mDDriveSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 1349
    :cond_2
    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1350
    iget-object v4, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    invoke-direct {p0, v4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->deleteDidiOrders(Ljava/lang/Runnable;)V

    .line 1398
    :goto_1
    return-void

    .line 1353
    :cond_3
    new-instance v3, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;

    invoke-direct {v3, p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$15;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;)V

    .line 1387
    .local v3, sucReqJob:Lthread/Job;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V

    .line 1388
    iget-object v4, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1389
    const v4, 0x7f0b014c

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 1390
    invoke-static {v3}, Lthread/pool/JobManager;->submit(Lthread/Job;)V

    goto :goto_1

    .line 1392
    :cond_4
    const v4, 0x7f0b0151

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 1393
    iget-object v4, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    if-eqz v4, :cond_5

    .line 1394
    iget-object v4, p1, Lcom/didi/ddrive/eventbus/event/OrderDeleteEvent;->callback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1395
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearSelectedItemsId(Z)V

    goto :goto_1
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderHistoryEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1632
    const-string v0, "OrderHistoryManager"

    const-string v1, "Start get didi history"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->getDataFromService()V

    .line 1634
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1637
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1638
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;->recovery:Z

    if-eqz v0, :cond_0

    .line 1639
    const-string v0, "OrderRecoveryManager"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 1641
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 1642
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 1643
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->doRecoveryWithOrderState(I)V

    .line 1648
    :goto_0
    return-void

    .line 1645
    :cond_0
    const-string v0, "OrderRecoveryManager"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1756
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V

    .line 1757
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 1758
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->removeLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 1759
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1748
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 1749
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->initData()V

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestory:Z

    .line 1751
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->addLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 1752
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1763
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->closeProgressDialog()V

    .line 1764
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 1765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isDestory:Z

    .line 1766
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mNumber:I

    .line 1767
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 327
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->addFooter()V

    .line 328
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 329
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mFooter:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 330
    return-void
.end method

.method protected refreshIMUnread(Lcom/didi/common/model/OrderHistoryList;)V
    .locals 5
    .parameter "historyList"

    .prologue
    .line 817
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v2, oidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v3, orderList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    invoke-virtual {p1}, Lcom/didi/common/model/OrderHistoryList;->getWaitingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 821
    .local v1, oh:Lcom/didi/common/model/OrderHistory;
    iget-object v4, v1, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    .end local v1           #oh:Lcom/didi/common/model/OrderHistory;
    :cond_0
    iget-object v4, p1, Lcom/didi/common/model/OrderHistoryList;->doneList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/OrderHistory;

    .line 826
    .restart local v1       #oh:Lcom/didi/common/model/OrderHistory;
    iget-object v4, v1, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    .end local v1           #oh:Lcom/didi/common/model/OrderHistory;
    :cond_1
    new-instance v4, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;

    invoke-direct {v4, p0, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$6;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/util/List;)V

    invoke-static {v2, v4}, Lcom/didi/im/net/IMRequest;->getTaxiOrderSSID(Ljava/util/List;Lcom/didi/common/net/ResponseListener;)V

    .line 844
    return-void
.end method

.method protected removeSelectedItem(Lcom/didi/common/model/OrderHistory;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->mSelectedOrders:Ljava/util/LinkedList;

    .line 1261
    .local v0, selectedOrders:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/didi/common/model/OrderHistory;>;"
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1267
    :cond_0
    return-void
.end method

.method public showConfirmDialogIfNeed(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "run"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b02ee

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 1492
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$18;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1522
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 1523
    return-void
.end method
