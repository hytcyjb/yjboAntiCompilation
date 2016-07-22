.class public final Lcom/google/android/gms/games/internal/LibjingleNativeSocket;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final KE:Landroid/os/ParcelFileDescriptor;

.field private final XX:Ljava/io/InputStream;

.field private final XY:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->KE:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->XX:Ljava/io/InputStream;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->XY:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->KE:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->XX:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->XY:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->KE:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;->XX:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method
