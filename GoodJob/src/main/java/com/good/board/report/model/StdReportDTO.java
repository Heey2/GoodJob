package com.good.board.report.model;

import lombok.Getter;

@Getter
public class StdReportDTO {
    private final String std_rp_seq;
    private final String std_rp_regdate;
    private final String id;
    private final String std_seq;
    private final String rp_seq;
    private final String std_rp_detail;

    private StdReportDTO(Builder builder) {
        this.std_rp_seq = builder.std_rp_seq;
        this.std_rp_regdate = builder.std_rp_regdate;
        this.id = builder.id;
        this.std_seq = builder.std_seq;
        this.rp_seq = builder.rp_seq;
        this.std_rp_detail = builder.std_rp_detail;
    }

    public static class Builder {
        private String std_rp_seq;
        private String std_rp_regdate;
        private String id;
        private String std_seq;
        private String rp_seq;
        private String std_rp_detail;

        public Builder withStd_rp_seq(String std_rp_seq) {
            this.std_rp_seq = std_rp_seq;
            return this;
        }

        public Builder withStd_rp_regdate(String std_rp_regdate) {
            this.std_rp_regdate = std_rp_regdate;
            return this;
        }

        public Builder withId(String id) {
            this.id = id;
            return this;
        }

        public Builder withStd_seq(String std_seq) {
            this.std_seq = std_seq;
            return this;
        }

        public Builder withRp_seq(String rp_seq) {
            this.rp_seq = rp_seq;
            return this;
        }

        public Builder withStd_rp_detail(String std_rp_detail) {
            this.std_rp_detail = std_rp_detail;
            return this;
        }

        public StdReportDTO build() {
            return new StdReportDTO(this);
        }
    }

}
