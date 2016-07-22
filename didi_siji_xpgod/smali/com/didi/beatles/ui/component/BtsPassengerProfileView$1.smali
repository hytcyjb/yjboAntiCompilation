.class Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsPassengerProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/component/BtsPassengerProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsPassengerProfileView;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView$1;->this$0:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submit()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 300
    return-void
.end method
