.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$22;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
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
        "Lcom/didi/common/model/OrderHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$22;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/didi/common/model/OrderHistory;Lcom/didi/common/model/OrderHistory;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const-wide/16 v5, 0x0

    .line 1786
    iget-object v4, p1, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v0

    .line 1787
    .local v0, time1:J
    iget-object v4, p2, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v2

    .line 1788
    .local v2, time2:J
    cmp-long v4, v0, v5

    if-lez v4, :cond_1

    cmp-long v4, v2, v5

    if-lez v4, :cond_1

    .line 1789
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1790
    const/4 v4, -0x1

    .line 1796
    :goto_0
    return v4

    .line 1791
    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1792
    const/4 v4, 0x1

    goto :goto_0

    .line 1796
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1782
    check-cast p1, Lcom/didi/common/model/OrderHistory;

    .end local p1
    check-cast p2, Lcom/didi/common/model/OrderHistory;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$22;->compare(Lcom/didi/common/model/OrderHistory;Lcom/didi/common/model/OrderHistory;)I

    move-result v0

    return v0
.end method
