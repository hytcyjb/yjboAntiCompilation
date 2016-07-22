.class public Lcom/didi/frame/search/SearchSugView;
.super Landroid/widget/RelativeLayout;
.source "SearchSugView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/search/SearchSugView$11;,
        Lcom/didi/frame/search/SearchSugView$AddressListener;
    }
.end annotation


# static fields
.field public static final ORDER_TYPE_INSTANT:I = 0x0

.field public static final ORDER_TYPE_PREORDER:I = 0x1

.field public static final SEARCH_EXTRA_CITY_ID:Ljava/lang/String; = "search_extra_cityid"

.field public static final SEARCH_EXTRA_CITY_NAME:Ljava/lang/String; = "search_extra_cityname"

.field public static final SEARCH_EXTRA_ORDER_TYPE:Ljava/lang/String; = "search_extra_order_type"

.field public static final SEARCH_EXTRA_RESULT:Ljava/lang/String; = "search_extra_result"

.field public static final SEARCH_EXTRA_TYPE:Ljava/lang/String; = "search_extra_type"

.field public static final SEARCH_TYPE_BTS_END:I = 0x7

.field public static final SEARCH_TYPE_BTS_START:I = 0x6

.field public static final SEARCH_TYPE_COMPANY:I = 0x5

.field public static final SEARCH_TYPE_END:I = 0x3

.field public static final SEARCH_TYPE_ESTIMATE_END:I = 0x7

.field public static final SEARCH_TYPE_ESTIMATE_START:I = 0x6

.field public static final SEARCH_TYPE_HOME:I = 0x4

.field public static final SEARCH_TYPE_START:I = 0x2


# instance fields
.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private commAddr:Lcom/didi/frame/search/CommonAddrView;

.field private commListener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

.field private count:I

.field private custom:Landroid/widget/RelativeLayout;

.field private customListener:Landroid/view/View$OnClickListener;

.field private fail:Landroid/widget/TextView;

.field private index:I

.field private isClear:Z

.field private isCompanyComm:Z

.field private isHomeComm:Z

.field private isRealTime:Z

.field private isStop:Z

.field private loading:Landroid/widget/RelativeLayout;

.field private locList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/didi/frame/search/SearchSugView$AddressListener;

.field private resend:Landroid/widget/TextView;

.field private searchType:I

.field private searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

.field private searchid:Ljava/lang/String;

.field private sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

.field private sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sugList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private sugListView:Landroid/widget/ListView;

.field private target:Landroid/widget/TextView;

.field private title:Lcom/didi/frame/departure/DepartSearchTitle;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityId:Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/didi/frame/search/SearchSugView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$5;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commListener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    .line 518
    new-instance v0, Lcom/didi/frame/search/SearchSugView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$6;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 533
    new-instance v0, Lcom/didi/frame/search/SearchSugView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$7;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->customListener:Landroid/view/View$OnClickListener;

    .line 541
    new-instance v0, Lcom/didi/frame/search/SearchSugView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$8;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    .line 138
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityId:Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/didi/frame/search/SearchSugView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$5;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commListener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    .line 518
    new-instance v0, Lcom/didi/frame/search/SearchSugView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$6;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 533
    new-instance v0, Lcom/didi/frame/search/SearchSugView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$7;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->customListener:Landroid/view/View$OnClickListener;

    .line 541
    new-instance v0, Lcom/didi/frame/search/SearchSugView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$8;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    .line 133
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->init()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityId:Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/didi/frame/search/SearchSugView$5;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$5;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commListener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    .line 518
    new-instance v0, Lcom/didi/frame/search/SearchSugView$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$6;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 533
    new-instance v0, Lcom/didi/frame/search/SearchSugView$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$7;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->customListener:Landroid/view/View$OnClickListener;

    .line 541
    new-instance v0, Lcom/didi/frame/search/SearchSugView$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/search/SearchSugView$8;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    .line 128
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->init()V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/search/SearchSugView;)Lcom/didi/frame/departure/DepartSearchTitle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/search/SearchSugView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/frame/search/SearchSugView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/didi/frame/search/SearchSugView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->showSetCommView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->onModify(Lcom/didi/common/model/Address;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/frame/search/SearchSugView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/didi/frame/search/SearchSugView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/didi/frame/search/SearchSugView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/didi/frame/search/SearchSugView;->index:I

    return p1
.end method

.method static synthetic access$1700(Lcom/didi/frame/search/SearchSugView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->upLoadAddressSug(Lcom/didi/common/model/Address;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->setCustomAddress()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/search/SearchSugView;->getPoiSug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    return-void
.end method

.method static synthetic access$2100(Lcom/didi/frame/search/SearchSugView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/didi/frame/search/SearchSugView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->onSearchSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->onSearchFail(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/didi/frame/search/SearchSugView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/didi/frame/search/SearchSugView;->isClear:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/didi/frame/search/SearchSugView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->doEmpityShow()V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p8}, Lcom/didi/frame/search/SearchSugView;->commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->onRecommend(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/frame/search/SearchSugView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    return v0
.end method

.method static synthetic access$500(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/frame/search/SearchSugView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/search/SearchSugView;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/search/SearchSugView;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/frame/search/SearchSugView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "name"
    .parameter "displayName"
    .parameter "cityId"
    .parameter "uid"
    .parameter "addr"
    .parameter "lng"
    .parameter "lat"
    .parameter "cotype"

    .prologue
    .line 964
    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/didi/common/net/CommonRequest;->editCommenAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 965
    return-void
.end method

.method private doEmpityShow()V
    .locals 2

    .prologue
    .line 751
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-eqz v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->showCommAddr()V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 754
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchLocList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 758
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 759
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    .line 761
    :cond_1
    return-void
.end method

.method private getPoiSug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sug"
    .parameter "cityname"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    .line 402
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    .line 403
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z

    move-result v0

    new-instance v1, Lcom/didi/frame/search/SearchSugView$4;

    invoke-direct {v1, p0, p1}, Lcom/didi/frame/search/SearchSugView$4;-><init>(Lcom/didi/frame/search/SearchSugView;Ljava/lang/String;)V

    invoke-static {p1, p2, v0, v1}, Lcom/didi/common/net/CommonRequest;->getPoiSuggestion(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 431
    return-void
.end method

.method private getSearchedCity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 781
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-eqz v2, :cond_0

    .line 782
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v2

    .line 800
    :goto_0
    return-object v2

    .line 784
    :cond_0
    const/4 v0, 0x0

    .line 785
    .local v0, city:Lcom/didi/common/model/City;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, tmpCityId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getCityId()Ljava/lang/String;

    move-result-object v1

    .line 790
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_3

    .line 791
    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getTaxiCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 797
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 798
    iget-object v2, v0, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    goto :goto_0

    .line 792
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_5

    .line 793
    :cond_4
    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCarCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    goto :goto_1

    .line 794
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_2

    .line 795
    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getCarCityById(Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    goto :goto_1

    .line 800
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hideCommAddr()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 849
    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 843
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 844
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ee

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isStop:Z

    .line 144
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initSearchTitle()V

    .line 145
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initListView()V

    .line 146
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initCustom()V

    .line 147
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initException()V

    .line 148
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initLoading()V

    .line 149
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->setSearchResultState()V

    .line 150
    return-void
.end method

.method private initCommonAddr()V
    .locals 4

    .prologue
    const v3, 0x7f0b01d6

    const v2, 0x7f0b01d4

    .line 153
    new-instance v0, Lcom/didi/frame/search/CommonAddrView;

    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/search/CommonAddrView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    .line 154
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/search/CommonAddrView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->commListener:Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/search/CommonAddrView;->setListener(Lcom/didi/frame/search/CommonAddrView$CommonAddrListener;)V

    .line 156
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasHomeAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1, v3}, Lcom/didi/frame/search/CommonAddrView;->setHome(II)V

    .line 160
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasCompanyAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/search/CommonAddrView;->setCompany(II)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 165
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1, v3}, Lcom/didi/frame/search/CommonAddrView;->setHome(II)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/search/CommonAddrView;->setCompany(II)V

    goto :goto_1
.end method

.method private initCustom()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    .line 170
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->customListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 172
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->target:Landroid/widget/TextView;

    .line 174
    return-void
.end method

.method private initException()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    .line 207
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/frame/search/SearchSugView$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/search/SearchSugView$2;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 216
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 217
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Lcom/didi/frame/departure/DepartureSearchAdapter;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/departure/DepartureSearchAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    .line 182
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->initCommonAddr()V

    .line 183
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 184
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    new-instance v1, Lcom/didi/frame/search/SearchSugView$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/search/SearchSugView$1;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    return-void
.end method

.method private initLoading()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;

    .line 221
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 222
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->loading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method private initSearchTitle()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/departure/DepartSearchTitle;

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    .line 200
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 201
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/didi/frame/departure/DepartSearchTitle;->setListener(Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;Z)V

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmpityShow(Ljava/lang/String;I)Z
    .locals 2
    .parameter "sug"
    .parameter "cou"

    .prologue
    const/4 v0, 0x0

    .line 739
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    if-ne v1, p2, :cond_0

    .line 740
    iget-boolean v1, p0, Lcom/didi/frame/search/SearchSugView;->isClear:Z

    if-eqz v1, :cond_1

    .line 741
    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isClear:Z

    .line 744
    :goto_0
    const/4 v0, 0x1

    .line 746
    :cond_0
    return v0

    .line 743
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->doEmpityShow()V

    goto :goto_0
.end method

.method private isStartPoint()Z
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeData(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    const/4 v8, 0x1

    .line 451
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 479
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/didi/common/database/HistoryPoiDBHelper;->select(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 454
    .local v5, oldlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v3, newlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 456
    .local v0, addr:Lcom/didi/common/model/Address;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 457
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/Address;

    .line 458
    .local v4, oldaddr:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 456
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 467
    .end local v0           #addr:Lcom/didi/common/model/Address;
    .end local v1           #i:I
    .end local v4           #oldaddr:Lcom/didi/common/model/Address;
    :cond_4
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 468
    sget-boolean v6, Lcom/didi/common/util/Constant;->isCloseInput:Z

    if-nez v6, :cond_5

    .line 469
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 471
    :cond_5
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_6

    .line 472
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 475
    :goto_3
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 476
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchType()I

    move-result v6

    invoke-static {v6}, Lcom/didi/common/database/HistoryPoiDBHelper;->deleteByType(I)V

    .line 478
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchType()I

    move-result v6

    invoke-static {v3, v6}, Lcom/didi/common/database/HistoryPoiDBHelper;->insertAll(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 474
    :cond_6
    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private onDataChange()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isStop:Z

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartureSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 3
    .parameter "poiList"
    .parameter "keyword"
    .parameter "c"

    .prologue
    .line 624
    invoke-direct {p0, p2, p3}, Lcom/didi/frame/search/SearchSugView;->isEmpityShow(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 628
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    .line 629
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    if-ne v0, p3, :cond_0

    .line 630
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    .line 631
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    .line 633
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 639
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 640
    invoke-virtual {p1, p2}, Lcom/didi/common/model/PoiList;->setKeyword(Ljava/lang/String;)V

    .line 641
    :cond_4
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    if-ne v0, p3, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchid:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    goto/16 :goto_0
.end method

.method private onModify(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tc_input_item"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 680
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    packed-switch v0, :pswitch_data_0

    .line 707
    :goto_1
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->onSelect(Lcom/didi/common/model/Address;)V

    .line 708
    return-void

    .line 679
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 683
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->setCommAddr(Lcom/didi/common/model/Address;)V

    .line 684
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSugStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/didi/frame/search/SearchSugView;->setOrderAddress(Lcom/didi/common/model/Address;Z)V

    goto :goto_1

    .line 690
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/didi/frame/search/SearchSugView;->setCommAddr(Lcom/didi/common/model/Address;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchSugEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 692
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/frame/search/SearchSugView;->setOrderAddress(Lcom/didi/common/model/Address;Z)V

    goto :goto_1

    .line 696
    :pswitch_2
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 697
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setHomeAddress(Lcom/didi/common/model/Address;)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView;->commitHomeAddressAsync(Lcom/didi/common/model/Address;)V

    goto :goto_1

    .line 702
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 703
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setCompanyAddress(Lcom/didi/common/model/Address;)V

    .line 704
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView;->commitCompanyAddressAsync(Lcom/didi/common/model/Address;)V

    goto :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "keyword"
    .parameter "c"

    .prologue
    .line 611
    invoke-direct {p0, p2, p3}, Lcom/didi/frame/search/SearchSugView;->isEmpityShow(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget v0, p0, Lcom/didi/frame/search/SearchSugView;->count:I

    if-ne v0, p3, :cond_0

    .line 614
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->hideView(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    .line 617
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b04db

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->resend:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onRecommend(Lcom/didi/common/model/PoiList;)V
    .locals 1
    .parameter "poiList"

    .prologue
    .line 440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchid:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/common/model/PoiList;->setCity(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->mergeData(Ljava/util/ArrayList;)V

    .line 445
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    goto :goto_0
.end method

.method private onSearchFail(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    .line 666
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    const v0, 0x7f0b04d7

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    .line 669
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-void
.end method

.method private onSearchSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 651
    if-nez p1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->showView(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 659
    :cond_2
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->searchid:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 661
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    goto :goto_0
.end method

.method private onSelect(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "addr"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->mListener:Lcom/didi/frame/search/SearchSugView$AddressListener;

    if-nez v0, :cond_0

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isStop:Z

    .line 893
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->mListener:Lcom/didi/frame/search/SearchSugView$AddressListener;

    invoke-interface {v0, p1}, Lcom/didi/frame/search/SearchSugView$AddressListener;->onSelect(Lcom/didi/common/model/Address;)V

    goto :goto_0
.end method

.method private preShowHistory()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 362
    sget-boolean v1, Lcom/didi/common/util/Constant;->isCloseInput:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchedCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getSearchType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/didi/common/database/HistoryPoiDBHelper;->select(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    .local v0, historyPoiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->locList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->onDataChange()V

    goto :goto_0
.end method

.method private preShowRecommend()V
    .locals 4

    .prologue
    .line 379
    iget-boolean v1, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, area:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getCityId()Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_0
    iget-boolean v1, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z

    move-result v2

    new-instance v3, Lcom/didi/frame/search/SearchSugView$3;

    invoke-direct {v3, p0}, Lcom/didi/frame/search/SearchSugView$3;-><init>(Lcom/didi/frame/search/SearchSugView;)V

    invoke-static {v1, v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->getAddrRecommend(ZLjava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 397
    return-void

    .line 379
    .end local v0           #area:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setCommAddr(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 879
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setHomeAddress(Lcom/didi/common/model/Address;)V

    .line 880
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView;->commitHomeAddressAsync(Lcom/didi/common/model/Address;)V

    .line 882
    :cond_0
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    if-eqz v0, :cond_1

    .line 883
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 884
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setCompanyAddress(Lcom/didi/common/model/Address;)V

    .line 885
    invoke-virtual {p0, p1}, Lcom/didi/frame/search/SearchSugView;->commitCompanyAddressAsync(Lcom/didi/common/model/Address;)V

    .line 887
    :cond_1
    return-void
.end method

.method private setCustomAddress()V
    .locals 2

    .prologue
    .line 711
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 712
    .local v0, addr:Lcom/didi/common/model/Address;
    iget-boolean v1, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-eqz v1, :cond_0

    .line 713
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 717
    :goto_0
    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v1}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 718
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCustom(Z)V

    .line 720
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/common/database/HistoryPoiDBHelper;->insert(Lcom/didi/common/model/Address;I)V

    .line 721
    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->upLoadAddressGeo(Lcom/didi/common/model/Address;)V

    .line 722
    invoke-direct {p0, v0}, Lcom/didi/frame/search/SearchSugView;->onModify(Lcom/didi/common/model/Address;)V

    .line 723
    return-void

    .line 715
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOrderAddress(Lcom/didi/common/model/Address;Z)V
    .locals 5
    .parameter "address"
    .parameter "isStart"

    .prologue
    .line 807
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 808
    .local v0, business:Lcom/didi/frame/business/Business;
    sget-object v3, Lcom/didi/frame/search/SearchSugView$11;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 810
    :pswitch_0
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrder;

    .line 811
    .local v2, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    if-eqz v2, :cond_0

    .line 814
    if-eqz p2, :cond_1

    .line 815
    invoke-virtual {v2, p1}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {v2, p1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 823
    .end local v2           #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    :pswitch_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 824
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    if-eqz v1, :cond_0

    .line 827
    if-eqz p2, :cond_2

    .line 828
    invoke-virtual {v1, p1}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 830
    :cond_2
    invoke-virtual {v1, p1}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setSearchResultState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 292
    sget-boolean v0, Lcom/didi/common/util/Constant;->isCloseInput:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->view:Landroid/view/View;

    const v1, 0x7f080507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->target:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->custom:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 299
    :cond_0
    return-void
.end method

.method private showCommAddr()V
    .locals 3

    .prologue
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---SearchSugView showCommAddr headercnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 855
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->commAddr:Lcom/didi/frame/search/CommonAddrView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 856
    new-instance v0, Lcom/didi/frame/departure/DepartureSearchAdapter;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/departure/DepartureSearchAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/search/SearchSugView;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 859
    return-void
.end method

.method private showSetCommView()V
    .locals 4

    .prologue
    .line 862
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->sugListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 863
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 864
    const v1, 0x7f0b01d7

    .line 865
    .local v1, txtHintResId:I
    const v0, 0x7f0b04d9

    .line 866
    .local v0, targetTextResId:I
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    if-eqz v2, :cond_0

    .line 867
    const v1, 0x7f0b01d5

    .line 868
    const v0, 0x7f0b04d4

    .line 870
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->setSearchResultState()V

    .line 871
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->target:Landroid/widget/TextView;

    const v3, 0x7f0b04df

    invoke-static {v3, v0}, Lcom/didi/common/util/TextUtil;->getString(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2, v1}, Lcom/didi/frame/departure/DepartSearchTitle;->setInputHint(I)V

    .line 873
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->showInputMethod()V

    .line 874
    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 840
    return-void
.end method

.method private upLoadAddressGeo(Lcom/didi/common/model/Address;)V
    .locals 8
    .parameter "addr"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setKeyword(Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 766
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z

    move-result v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/didi/frame/search/SearchSugView;->index:I

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v6

    const-string v7, ""

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/didi/taxi/net/TaxiRequest;->logAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZIZLjava/lang/String;)V

    .line 767
    return-void
.end method

.method private upLoadAddressSug(Lcom/didi/common/model/Address;)V
    .locals 7
    .parameter "poi"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, input:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/didi/common/model/Address;->setKeyword(Ljava/lang/String;)V

    .line 772
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->isStartPoint()Z

    move-result v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/didi/frame/search/SearchSugView;->index:I

    iget-object v6, p0, Lcom/didi/frame/search/SearchSugView;->searchid:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/didi/taxi/net/TaxiRequest;->logSelectedAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZILjava/lang/String;)V

    .line 773
    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    .prologue
    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isStop:Z

    .line 898
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 899
    invoke-virtual {p0}, Lcom/didi/frame/search/SearchSugView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f040019

    const v2, 0x7f04001a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 900
    return-void
.end method

.method public commitCompanyAddressAsync(Lcom/didi/common/model/Address;)V
    .locals 3
    .parameter "companyAddress"

    .prologue
    .line 908
    new-instance v0, Lcom/didi/frame/search/SearchSugView$9;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/search/SearchSugView$9;-><init>(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 928
    return-void
.end method

.method public commitHomeAddressAsync(Lcom/didi/common/model/Address;)V
    .locals 3
    .parameter "homeAddress"

    .prologue
    .line 932
    new-instance v0, Lcom/didi/frame/search/SearchSugView$10;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/search/SearchSugView$10;-><init>(Lcom/didi/frame/search/SearchSugView;Lcom/didi/common/model/Address;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 952
    return-void
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()I
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, type:I
    iget v1, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    packed-switch v1, :pswitch_data_0

    .line 326
    :goto_0
    :pswitch_0
    return v0

    .line 319
    :pswitch_1
    const/4 v0, 0x1

    .line 320
    goto :goto_0

    .line 323
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public preShowData()V
    .locals 4

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, txtHintResId:I
    const/4 v0, 0x0

    .line 229
    .local v0, targetTextResId:I
    iget v2, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    packed-switch v2, :pswitch_data_0

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->setSearchResultState()V

    .line 287
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->target:Landroid/widget/TextView;

    const v3, 0x7f0b04df

    invoke-static {v3, v0}, Lcom/didi/common/util/TextUtil;->getString(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2, v1}, Lcom/didi/frame/departure/DepartSearchTitle;->setInputHint(I)V

    .line 289
    return-void

    .line 231
    :pswitch_0
    const v1, 0x7f0b04ef

    .line 232
    const v0, 0x7f0b04de

    .line 233
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-nez v2, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 237
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto :goto_0

    .line 240
    :pswitch_1
    const v1, 0x7f0b04f0

    .line 241
    const v0, 0x7f0b04d6

    .line 242
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-nez v2, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 246
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto :goto_0

    .line 250
    :pswitch_2
    const v1, 0x7f0b01d7

    .line 251
    const v0, 0x7f0b04d9

    .line 252
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 253
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 254
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 255
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto :goto_0

    .line 259
    :pswitch_3
    const v1, 0x7f0b01d5

    .line 260
    const v0, 0x7f0b04d4

    .line 261
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 262
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 263
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 264
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto :goto_0

    .line 267
    :pswitch_4
    const v1, 0x7f0b04ef

    .line 268
    const v0, 0x7f0b04de

    .line 269
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-nez v2, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 273
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto :goto_0

    .line 276
    :pswitch_5
    const v1, 0x7f0b04f0

    .line 277
    const v0, 0x7f0b04d6

    .line 278
    iget-boolean v2, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    if-nez v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->hideCommAddr()V

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowHistory()V

    .line 282
    invoke-direct {p0}, Lcom/didi/frame/search/SearchSugView;->preShowRecommend()V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView;->cityId:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView;->cityName:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setIsRealtime(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/didi/frame/search/SearchSugView;->isRealTime:Z

    .line 351
    return-void
.end method

.method public setListener(Lcom/didi/frame/search/SearchSugView$AddressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/didi/frame/search/SearchSugView;->mListener:Lcom/didi/frame/search/SearchSugView$AddressListener;

    .line 355
    return-void
.end method

.method public setSearchType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 330
    iput p1, p0, Lcom/didi/frame/search/SearchSugView;->searchType:I

    .line 331
    return-void
.end method

.method public shouldBack()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNormal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isHomeComm:Z

    .line 309
    iput-boolean v0, p0, Lcom/didi/frame/search/SearchSugView;->isCompanyComm:Z

    .line 310
    iget-object v0, p0, Lcom/didi/frame/search/SearchSugView;->title:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->clearInput()V

    .line 311
    return-void
.end method
