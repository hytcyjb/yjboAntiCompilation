.class Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$2;
.super Ljava/lang/Object;
.source "TaxiCarPoolGuideHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$2;->this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$2;->this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->disMissGuide()V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
