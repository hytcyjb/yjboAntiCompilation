.class public Lcom/google/android/gms/plus/PlusClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final ali:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private final alj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private final alk:Lcom/google/android/gms/plus/internal/i;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->ali:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    new-instance v0, Lcom/google/android/gms/plus/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/PlusClient;
    .locals 6

    new-instance v0, Lcom/google/android/gms/plus/PlusClient;

    new-instance v1, Lcom/google/android/gms/plus/internal/e;

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->ali:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v5}, Lcom/google/android/gms/plus/internal/i;->nq()Lcom/google/android/gms/plus/internal/h;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/PlusClient;-><init>(Lcom/google/android/gms/plus/internal/e;)V

    return-object v0
.end method

.method public clearScopes()Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/i;->np()Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->ch(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public varargs setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->h([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->alk:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->g([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method
