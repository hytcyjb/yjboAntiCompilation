.class Lcom/google/android/gms/tagmanager/r;
.super Ljava/lang/Object;


# instance fields
.field private aoD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://www.googletagmanager.com"

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/r;->aoD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public od()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/r;->aoD:Ljava/lang/String;

    return-object v0
.end method
