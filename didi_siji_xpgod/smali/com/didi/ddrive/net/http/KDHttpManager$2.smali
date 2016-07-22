.class Lcom/didi/ddrive/net/http/KDHttpManager$2;
.super Ljava/lang/Object;
.source "KDHttpManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/net/http/KDHttpManager;->performDriveRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<TK;>;"
    }
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
    .line 96
    iput-object p1, p0, Lcom/didi/ddrive/net/http/KDHttpManager$2;->this$0:Lcom/didi/ddrive/net/http/KDHttpManager;

    iput-object p2, p0, Lcom/didi/ddrive/net/http/KDHttpManager$2;->val$intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, response:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/didi/ddrive/net/http/KDHttpManager$2;->val$intercept:Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpResultIntercepter;->interceptHttpResult(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
