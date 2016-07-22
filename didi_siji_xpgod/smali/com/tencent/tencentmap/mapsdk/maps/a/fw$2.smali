.class final Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;
.super Ljava/lang/Object;
.source "MarkerManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 120
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 125
    iget-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v4, :cond_1

    .line 162
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 131
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    .line 156
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-interface {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 159
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 136
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 138
    .local v3, y:I
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    int-to-double v4, v2

    int-to-double v6, v3

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 142
    .local v0, doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    .line 144
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 145
    .local v1, mNewPositon:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 147
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-interface {v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;->onMarkerDrag(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter "strMarkerId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 176
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 181
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 184
    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->c:Z

    .line 189
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fw;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fw;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/fw;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fw$2;->b:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method
