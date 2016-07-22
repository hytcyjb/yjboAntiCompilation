.class public Lcom/google/android/gms/internal/dc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final md:Lcom/google/android/gms/internal/gv;

.field private final qM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qN:Ljava/lang/String;

.field private qO:J

.field private qP:J

.field private qQ:Ljava/lang/String;

.field private qR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gv;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dc;->md:Lcom/google/android/gms/internal/gv;

    iput-object p2, p0, Lcom/google/android/gms/internal/dc;->qM:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gv;->dz()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dc;->bG()V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->qM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->qM:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/gv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->md:Lcom/google/android/gms/internal/gv;

    return-object v0
.end method

.method private bG()V
    .locals 2

    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dc;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->qN:Ljava/lang/String;

    const-string v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dc;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->qQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->qM:Ljava/util/Map;

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->O(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->qO:J

    iget-object v0, p0, Lcom/google/android/gms/internal/dc;->qM:Ljava/util/Map;

    const-string v1, "end"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->O(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->qP:J

    const-string v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dc;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->qR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/dc;->qQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/dc;->qR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/dc;->qN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/dc;->qO:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/dc;->qP:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public execute()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/bl;

    iget-object v1, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bl;->bo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "This feature is not available on this version of the device."

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/dc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/gms/R$string;->create_calendar_title:I

    const-string v2, "Create calendar event"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gb;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/google/android/gms/R$string;->create_calendar_message:I

    const-string v2, "Allow Ad to create a calendar event?"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gb;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/google/android/gms/R$string;->accept:I

    const-string v2, "Accept"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gb;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/dc$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/dc$1;-><init>(Lcom/google/android/gms/internal/dc;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/google/android/gms/R$string;->decline:I

    const-string v2, "Decline"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gb;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/dc$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/dc$2;-><init>(Lcom/google/android/gms/internal/dc;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
