.class public Lcom/seatgeek/sixpack/response/ParticipateResponse;
.super Ljava/lang/Object;
.source "ParticipateResponse.java"


# instance fields
.field public alternative:Lcom/seatgeek/sixpack/response/AlternativeName;

.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field public experiment:Lcom/seatgeek/sixpack/response/ExperimentName;

.field private selectedAlternative:Lcom/seatgeek/sixpack/Alternative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedAlternative()Lcom/seatgeek/sixpack/Alternative;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/seatgeek/sixpack/response/ParticipateResponse;->selectedAlternative:Lcom/seatgeek/sixpack/Alternative;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/seatgeek/sixpack/response/ParticipateResponse;->alternative:Lcom/seatgeek/sixpack/response/AlternativeName;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/seatgeek/sixpack/Alternative;

    iget-object v1, p0, Lcom/seatgeek/sixpack/response/ParticipateResponse;->alternative:Lcom/seatgeek/sixpack/response/AlternativeName;

    iget-object v1, v1, Lcom/seatgeek/sixpack/response/AlternativeName;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/seatgeek/sixpack/Alternative;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/seatgeek/sixpack/response/ParticipateResponse;->selectedAlternative:Lcom/seatgeek/sixpack/Alternative;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/seatgeek/sixpack/response/ParticipateResponse;->selectedAlternative:Lcom/seatgeek/sixpack/Alternative;

    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
