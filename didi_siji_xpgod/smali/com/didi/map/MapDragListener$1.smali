.class Lcom/didi/map/MapDragListener$1;
.super Ljava/lang/Object;
.source "MapDragListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/MapDragListener;->adsorb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/MapDragListener;


# direct methods
.method constructor <init>(Lcom/didi/map/MapDragListener;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/map/MapDragListener$1;->this$0:Lcom/didi/map/MapDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showDepartWindow()V

    .line 140
    return-void
.end method
