.class Lcom/google/android/gms/maps/model/TileOverlayOptions$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>(ILandroid/os/IBinder;ZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final aku:Lcom/google/android/gms/maps/model/internal/i;

.field final synthetic akv:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->akv:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->akv:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->aku:Lcom/google/android/gms/maps/model/internal/i;

    return-void
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions$1;->aku:Lcom/google/android/gms/maps/model/internal/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/internal/i;->getTile(III)Lcom/google/android/gms/maps/model/Tile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
