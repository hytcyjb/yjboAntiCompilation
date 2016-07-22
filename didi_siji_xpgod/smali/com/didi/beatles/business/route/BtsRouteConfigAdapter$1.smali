.class Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;
.super Ljava/lang/Object;
.source "BtsRouteConfigAdapter.java"

# interfaces
.implements Lcom/didi/common/ui/component/SwitchBar$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->fillUI(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;Lcom/didi/beatles/model/route/BtsRoute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

.field final synthetic val$holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;

.field final synthetic val$route:Lcom/didi/beatles/model/route/BtsRoute;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    iput-object p2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    iput-object p3, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$holder:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
    .locals 2
    .parameter "wiperSwitch"
    .parameter "checkState"

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    iput-boolean p2, v0, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    .line 127
    if-eqz p2, :cond_0

    .line 128
    const-string v0, "pbdxpathset03_ck"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;->val$route:Lcom/didi/beatles/model/route/BtsRoute;

    new-instance v1, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1$1;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigAdapter$1;)V

    invoke-static {v0, v1}, Lcom/didi/beatles/net/BtsRequest;->modifyRoute(Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 146
    return-void

    .line 130
    :cond_0
    const-string v0, "pbdxpathset02_ck"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
