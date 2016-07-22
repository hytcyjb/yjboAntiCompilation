.class public Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
.super Ljava/lang/Object;
.source "KDPreferenceDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/preferences/KDPreferenceDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field public pid:J

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "token"
    .parameter "pid"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    .line 193
    iput-object p1, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    .line 194
    iput-wide p2, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    .line 195
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
