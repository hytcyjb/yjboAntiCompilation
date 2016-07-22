.class Lcom/didi/ddrive/net/http/KDHttpManager$1;
.super Ljava/lang/Object;
.source "KDHttpManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/net/http/KDHttpManager;->performDriveRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/net/http/KDHttpManager;

.field final synthetic val$intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/net/http/KDHttpManager;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$1;->this$0:Lcom/didi/ddrive/net/http/KDHttpManager;

    iput-object p2, p0, Lcom/didi/ddrive/net/http/KDHttpManager$1;->val$intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$1;->val$intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->interceptHttpFailure(Lcom/android/volley/VolleyError;)V

    .line 94
    return-void
.end method
