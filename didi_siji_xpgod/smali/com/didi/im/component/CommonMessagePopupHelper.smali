.class public Lcom/didi/im/component/CommonMessagePopupHelper;
.super Ljava/lang/Object;
.source "CommonMessagePopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
    }
.end annotation


# static fields
.field public static final COMMON_MESSAGE:I = 0x1

.field public static final RESEND_MESSAGE:I = 0x2


# instance fields
.field private chatRecord:Lcom/didi/im/model/IMChatRecord;

.field private commonMessageAdapter:Lcom/didi/im/adapter/CommonMessageAdapter;

.field private listView:Lcom/didi/im/component/CornerListView;

.field private listener:Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPopupwinow:Landroid/widget/PopupWindow;

.field private msgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private popupType:I

.field private popupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "popupType"
    .parameter "chatRecord"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 106
    new-instance v0, Lcom/didi/im/component/CommonMessagePopupHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/im/component/CommonMessagePopupHelper$1;-><init>(Lcom/didi/im/component/CommonMessagePopupHelper;)V

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    iput-object p2, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listener:Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;

    .line 46
    iput-object p1, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mContext:Landroid/content/Context;

    .line 47
    iput p3, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupType:I

    .line 48
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 49
    iput-object p4, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->chatRecord:Lcom/didi/im/model/IMChatRecord;

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/didi/im/component/CommonMessagePopupHelper;->initPopupWindow()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/component/CornerListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/im/component/CommonMessagePopupHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/im/component/CommonMessagePopupHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupType:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listener:Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/model/IMChatRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->chatRecord:Lcom/didi/im/model/IMChatRecord;

    return-object v0
.end method

.method public static getDialogHelper(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)Lcom/didi/im/component/CommonMessagePopupHelper;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "popupType"
    .parameter "chatRecord"

    .prologue
    .line 56
    new-instance v0, Lcom/didi/im/component/CommonMessagePopupHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/im/component/CommonMessagePopupHelper;-><init>(Landroid/content/Context;Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;ILcom/didi/im/model/IMChatRecord;)V

    return-object v0
.end method

.method private initPopupWindow()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/didi/im/component/CommonMessagePopupHelper;->initViews(Landroid/content/Context;)V

    .line 63
    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupView:Landroid/view/View;

    const v1, 0x7f0803ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/CornerListView;

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;

    .line 68
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;

    const v1, 0x7f0901f7

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/CornerListView;->setDividerHeight(I)V

    .line 69
    return-void
.end method

.method private setData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/didi/im/adapter/CommonMessageAdapter;

    invoke-direct {v0, p1, p2}, Lcom/didi/im/adapter/CommonMessageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->commonMessageAdapter:Lcom/didi/im/adapter/CommonMessageAdapter;

    .line 92
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;

    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->commonMessageAdapter:Lcom/didi/im/adapter/CommonMessageAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/CornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;

    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/CornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public disMissPopupWindow()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    :cond_1
    return-void
.end method

.method public showPopupWindow(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 72
    iput-object p3, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    .line 73
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 87
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local p1
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/didi/im/component/CommonMessagePopupHelper;->setData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 77
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 79
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->popupView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 82
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mPopupwinow:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 84
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/im/component/CommonMessagePopupHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
