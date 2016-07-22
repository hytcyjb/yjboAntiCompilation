.class public abstract Lcom/didi/frame/wait/WaitAdapter;
.super Ljava/lang/Object;
.source "WaitAdapter.java"


# static fields
.field private static adapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/didi/frame/business/Business;",
            "Lcom/didi/frame/wait/WaitAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/frame/wait/WaitAdapter;->adapterMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "business"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/didi/frame/wait/WaitAdapter;->adapterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static getCurrentAdapter()Lcom/didi/frame/wait/WaitAdapter;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 28
    .local v0, busi:Lcom/didi/frame/business/Business;
    if-nez v0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/didi/frame/wait/WaitAdapter;->adapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/wait/WaitAdapter;

    goto :goto_0
.end method


# virtual methods
.method public abstract getTriggerText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWaitTimeList(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
