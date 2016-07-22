.class final Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;
.super Ljava/lang/Object;
.source "MapEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;


# direct methods
.method private constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V
    .locals 1
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    .line 973
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)V

    return-void
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->b()V

    .line 1125
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f()V

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    .locals 5

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1003
    .local v1, request:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1004
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    move-object v1, v0

    .line 1003
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    return-object v1

    .line 1003
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private declared-synchronized c()Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1035
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    .line 1036
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 1059
    :goto_0
    monitor-exit p0

    return-object v5

    .line 1038
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1039
    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-direct {p0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1044
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e()V

    .line 1046
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1047
    .local v1, bounds:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I

    move-result v4

    .line 1048
    .local v4, snapshotWidth:I
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I

    move-result v3

    .line 1049
    .local v3, snapshotHeight:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1052
    .local v2, paddingRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ct;->a(Landroid/content/Context;)F

    move-result v5

    const/high16 v6, 0x41a0

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 1054
    .local v0, PADDING:I
    sget v5, Lcom/tencent/map/lib/gl/a;->a:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 1055
    sget v5, Lcom/tencent/map/lib/gl/a;->b:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 1057
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1059
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1073
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    move-result-object v0

    .line 1074
    .local v0, request:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp;)Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->s()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1069
    .end local v0           #request:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V
    .locals 13
    .parameter "gl"
    .parameter "canvas"

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I

    move-result v3

    .line 1093
    .local v3, snapshotWid:I
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)I

    move-result v4

    .line 1094
    .local v4, snapshotHei:I
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Lcom/tencent/tencentmap/mapsdk/maps/a/by;

    move-result-object v8

    .line 1095
    .local v8, mSnapshotCallback:Lcom/tencent/tencentmap/mapsdk/maps/a/by;
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)Lcom/tencent/tencentmap/mapsdk/maps/a/ck;

    move-result-object v9

    .line 1098
    .local v9, snapshotElement:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;
    if-eqz v9, :cond_0

    .line 1099
    invoke-interface {v9, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ck;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V

    .line 1102
    :cond_0
    mul-int v0, v3, v4

    new-array v10, v0, [I

    new-array v11, v0, [I

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    sget v0, Lcom/tencent/map/lib/gl/a;->a:I

    sub-int/2addr v0, v3

    div-int/lit8 v1, v0, 0x2

    sget v0, Lcom/tencent/map/lib/gl/a;->b:I

    sub-int/2addr v0, v4

    div-int/lit8 v2, v0, 0x2

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1103
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;->a()Z

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp$b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bp$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    .end local v3           #snapshotWid:I
    .end local v4           #snapshotHei:I
    .end local v8           #mSnapshotCallback:Lcom/tencent/tencentmap/mapsdk/maps/a/by;
    .end local v9           #snapshotElement:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;
    :cond_2
    monitor-exit p0

    return-void

    .line 1102
    .restart local v3       #snapshotWid:I
    .restart local v4       #snapshotHei:I
    .restart local v8       #mSnapshotCallback:Lcom/tencent/tencentmap/mapsdk/maps/a/by;
    .restart local v9       #snapshotElement:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    mul-int v2, v1, v3

    add-int/2addr v2, v0

    :try_start_1
    aget v2, v10, v2

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v2, 0x10

    const/high16 v7, 0xff

    and-int/2addr v6, v7

    sub-int v7, v4, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v7, v3

    add-int/2addr v7, v0

    const v12, -0xff0100

    and-int/2addr v2, v12

    or-int/2addr v2, v6

    or-int/2addr v2, v5

    aput v2, v11, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1091
    .end local v3           #snapshotWid:I
    .end local v4           #snapshotHei:I
    .end local v8           #mSnapshotCallback:Lcom/tencent/tencentmap/mapsdk/maps/a/by;
    .end local v9           #snapshotElement:Lcom/tencent/tencentmap/mapsdk/maps/a/ck;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
