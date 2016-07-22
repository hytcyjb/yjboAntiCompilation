.class Lcom/didi/frame/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MainActivity;->showFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MainActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/frame/MainActivity$2;->this$0:Lcom/didi/frame/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->homeself()V

    .line 263
    const/4 v0, -0x1

    sput v0, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    .line 264
    return-void
.end method
