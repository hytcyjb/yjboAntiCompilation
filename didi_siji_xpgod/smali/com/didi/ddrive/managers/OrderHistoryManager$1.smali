.class Lcom/didi/ddrive/managers/OrderHistoryManager$1;
.super Ljava/lang/Object;
.source "OrderHistoryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/managers/OrderHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderHistoryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderHistoryManager$1;->this$0:Lcom/didi/ddrive/managers/OrderHistoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const-wide/16 v5, 0x0

    .line 46
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->stime:J

    .line 47
    .local v0, time1:J
    iget-wide v2, p2, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->stime:J

    .line 48
    .local v2, time2:J
    cmp-long v4, v0, v5

    if-lez v4, :cond_1

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    .line 49
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 50
    const/4 v4, -0x1

    .line 55
    :goto_0
    return v4

    .line 51
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 52
    const/4 v4, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p1, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    .end local p1
    check-cast p2, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/ddrive/managers/OrderHistoryManager$1;->compare(Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;)I

    move-result v0

    return v0
.end method
