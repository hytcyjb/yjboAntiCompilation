.class Lcom/google/android/gms/drive/internal/q$2;
.super Lcom/google/android/gms/drive/internal/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/q;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/events/c;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OG:Lcom/google/android/gms/drive/DriveId;

.field final synthetic OH:I

.field final synthetic OJ:Lcom/google/android/gms/drive/internal/q;

.field final synthetic OK:Lcom/google/android/gms/drive/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/q;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/q$2;->OJ:Lcom/google/android/gms/drive/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/q$2;->OG:Lcom/google/android/gms/drive/DriveId;

    iput p3, p0, Lcom/google/android/gms/drive/internal/q$2;->OH:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/q$2;->OK:Lcom/google/android/gms/drive/internal/y;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/q;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q$2;->a(Lcom/google/android/gms/drive/internal/q;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/q;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/q;->hY()Lcom/google/android/gms/drive/internal/ab;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/q$2;->OG:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/drive/internal/q$2;->OH:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/q$2;->OK:Lcom/google/android/gms/drive/internal/y;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/drive/internal/bb;

    invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/bb;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/ab;->a(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/ad;Ljava/lang/String;Lcom/google/android/gms/drive/internal/ac;)V

    return-void
.end method
