.class Lcom/didi/frame/business/redirector/RedirectEngine$1;
.super Ljava/lang/Object;
.source "RedirectEngine.java"

# interfaces
.implements Lcom/didi/frame/switcher/SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/business/redirector/RedirectEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/business/redirector/RedirectEngine;


# direct methods
.method constructor <init>(Lcom/didi/frame/business/redirector/RedirectEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/didi/frame/business/redirector/RedirectEngine$1;->this$0:Lcom/didi/frame/business/redirector/RedirectEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    .locals 1
    .parameter "currentBusiness"
    .parameter "targetBusiness"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/frame/business/redirector/RedirectEngine$1;->this$0:Lcom/didi/frame/business/redirector/RedirectEngine;

    #calls: Lcom/didi/frame/business/redirector/RedirectEngine;->switchBusiness(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V
    invoke-static {v0, p1, p2}, Lcom/didi/frame/business/redirector/RedirectEngine;->access$000(Lcom/didi/frame/business/redirector/RedirectEngine;Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 47
    return-void
.end method
